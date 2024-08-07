//
//  HW16.swift
//  TestProject
//
//  Created by ARMBP on 8/7/24.
//

import Foundation

struct Task {
    let id: UUID
    let data: Data
}

struct Result {
    let taskId: UUID
    let processedData: Data
}

class ClientManager {
    private var clients: [UUID: Client] = [:]
    
    func addClient(_ client: Client) {
        clients[client.id] = client
    }
    
    func removeClient(_ client: Client) {
        clients.removeValue(forKey: client.id)
    }
    
    func distributeTask(_ task: Task) async -> Result? {
        for client in clients.values {
            if let result = await client.processTask(task) {
                return result
            }
        }
        return nil
    }
}

class Client {
    let id: UUID
    private let processingQueue = DispatchQueue(label: "client.processing.queue")
    
    init(id: UUID = UUID()) {
        self.id = id
    }
    
    func processTask(_ task: Task) async -> Result? {
        return await withCheckedContinuation { continuation in
            processingQueue.async {
                let processedData = task.data
                let result = Result(taskId: task.id, processedData: processedData)
                continuation.resume(returning: result)
            }
        }
    }
}

class TaskManager {
    private let clientManager = ClientManager()
    private var results: [UUID: Result] = [:]
    
    func addClient(_ client: Client) {
        clientManager.addClient(client)
    }
    
    func removeClient(_ client: Client) {
        clientManager.removeClient(client)
    }
    
    func processTasks(_ tasks: [Task]) async {
        await withTaskGroup(of: Result?.self) { group in
            for task in tasks {
                group.addTask {
                    return await self.clientManager.distributeTask(task)
                }
            }
            
            for await result in group {
                if let result = result {
                    self.results[result.taskId] = result
                }
            }
        }
    }
    
    func getResult(for taskId: UUID) -> Result? {
        return results[taskId]
    }
}
