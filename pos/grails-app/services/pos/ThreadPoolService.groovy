package pos

import java.util.concurrent.ExecutorService
import java.util.concurrent.Executors
import java.util.concurrent.TimeUnit

class ThreadPoolService {
    private static final int MAX_THREADS = 5 // Adjust based on server capacity
    private ExecutorService executorService = Executors.newFixedThreadPool(MAX_THREADS)

    def execute(Runnable task) {
        executorService.execute(task)
    }

    def shutdown() {
        executorService.shutdown()
        try {
            if (!executorService.awaitTermination(60, TimeUnit.SECONDS)) {
                executorService.shutdownNow()
            }
        } catch (InterruptedException e) {
            executorService.shutdownNow()
        }
    }
}

