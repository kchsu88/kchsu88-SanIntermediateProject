.class final Lccsancom/google/common/util/concurrent/AbstractService$4;
.super Ljava/lang/Object;
.source "AbstractService.java"

# interfaces
.implements Lccsancom/google/common/util/concurrent/ListenerCallQueue$Event;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/util/concurrent/AbstractService;->stoppingEvent(Lccsancom/google/common/util/concurrent/Service$State;)Lccsancom/google/common/util/concurrent/ListenerCallQueue$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/common/util/concurrent/ListenerCallQueue$Event<",
        "Lccsancom/google/common/util/concurrent/Service$Listener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$from:Lccsancom/google/common/util/concurrent/Service$State;


# direct methods
.method constructor <init>(Lccsancom/google/common/util/concurrent/Service$State;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lccsancom/google/common/util/concurrent/AbstractService$4;->val$from:Lccsancom/google/common/util/concurrent/Service$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lccsancom/google/common/util/concurrent/Service$Listener;)V
    .locals 1
    .param p1, "listener"    # Lccsancom/google/common/util/concurrent/Service$Listener;

    .line 109
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/AbstractService$4;->val$from:Lccsancom/google/common/util/concurrent/Service$State;

    invoke-virtual {p1, v0}, Lccsancom/google/common/util/concurrent/Service$Listener;->stopping(Lccsancom/google/common/util/concurrent/Service$State;)V

    .line 110
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 106
    check-cast p1, Lccsancom/google/common/util/concurrent/Service$Listener;

    invoke-virtual {p0, p1}, Lccsancom/google/common/util/concurrent/AbstractService$4;->call(Lccsancom/google/common/util/concurrent/Service$Listener;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopping({from = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/google/common/util/concurrent/AbstractService$4;->val$from:Lccsancom/google/common/util/concurrent/Service$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
