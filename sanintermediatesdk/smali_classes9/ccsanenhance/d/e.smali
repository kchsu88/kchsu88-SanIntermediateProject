.class public Lccsanenhance/d/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanenhance/d/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanenhance/d/e$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/locks/ReentrantLock;

.field public b:Ljava/lang/Thread;

.field public final c:Ljava/util/concurrent/locks/Condition;

.field public final d:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lccsanenhance/d/e$b;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/Executor;

.field public volatile f:Lccsanenhance/d/e$b;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lccsanenhance/d/e;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lccsanenhance/d/e;->c:Ljava/util/concurrent/locks/Condition;

    .line 25
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lccsanenhance/d/e;->d:Ljava/util/PriorityQueue;

    .line 26
    iput-object p1, p0, Lccsanenhance/d/e;->e:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 69
    iget-object v0, p0, Lccsanenhance/d/e;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 70
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 73
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lccsanenhance/d/e;->f:Lccsanenhance/d/e$b;

    .line 76
    :goto_0
    iget-object v2, p0, Lccsanenhance/d/e;->d:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanenhance/d/e$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    .line 100
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 101
    :cond_0
    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3}, Lccsanenhance/d/e$b;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    .line 104
    iget-object v1, p0, Lccsanenhance/d/e;->e:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lccsanenhance/d/e;->d:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanenhance/d/e$b;

    iput-object v2, p0, Lccsanenhance/d/e;->f:Lccsanenhance/d/e$b;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 121
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iput-object v4, p0, Lccsanenhance/d/e;->b:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    :try_start_3
    iget-object v4, p0, Lccsanenhance/d/e;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 126
    :try_start_4
    iget-object v3, p0, Lccsanenhance/d/e;->d:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->clear()V

    .line 127
    new-instance v3, Lccsanenhance/c/a;

    invoke-direct {v3, v2}, Lccsanenhance/c/a;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lccsanenhance/c/b;->a(Lccsanenhance/c/a;)V

    :goto_1
    nop

    .line 130
    iput-object v1, p0, Lccsanenhance/d/e;->b:Ljava/lang/Thread;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 133
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 134
    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public a(Lccsanenhance/d/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsanenhance/d/e;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    :try_start_0
    new-instance v1, Lccsanenhance/d/e$b;

    invoke-direct {v1, p0, p1}, Lccsanenhance/d/e$b;-><init>(Lccsanenhance/d/e;Lccsanenhance/d/b;)V

    .line 5
    iget-object p1, p0, Lccsanenhance/d/e;->d:Ljava/util/PriorityQueue;

    invoke-virtual {p1, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lccsanenhance/d/e;->d:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, p1, :cond_0

    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 28
    :cond_0
    :try_start_1
    iget-object p1, p0, Lccsanenhance/d/e;->b:Ljava/lang/Thread;

    if-eqz p1, :cond_1

    .line 29
    iget-object p1, p0, Lccsanenhance/d/e;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 46
    :cond_1
    :try_start_2
    iget-object p1, p0, Lccsanenhance/d/e;->f:Lccsanenhance/d/e$b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_2

    .line 58
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 59
    :cond_2
    :try_start_3
    new-instance p1, Lccsanenhance/d/e$a;

    invoke-direct {p1, p0}, Lccsanenhance/d/e$a;-><init>(Lccsanenhance/d/e;)V

    .line 65
    invoke-static {}, Lccsanenhance/a/e;->a()Lccsanenhance/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lccsanenhance/a/e;->b()Lccsanenhance/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lccsanenhance/d/f;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 67
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 68
    throw p1
.end method
