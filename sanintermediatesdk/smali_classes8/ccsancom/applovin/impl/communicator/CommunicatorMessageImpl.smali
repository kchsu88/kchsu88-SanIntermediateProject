.class public abstract Lccsancom/applovin/impl/communicator/CommunicatorMessageImpl;
.super Lccsanandroid/content/Intent;


# instance fields
.field private final a:Ljava/lang/String;

.field protected final data:Lccsanandroid/os/Bundle;

.field protected final publisherRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsancom/applovin/communicator/AppLovinCommunicatorPublisher;",
            ">;"
        }
    .end annotation
.end field

.field protected sticky:Z


# direct methods
.method public constructor <init>(Lccsanandroid/os/Bundle;Ljava/lang/String;Lccsancom/applovin/communicator/AppLovinCommunicatorPublisher;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lccsancom/applovin/impl/communicator/CommunicatorMessageImpl;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lccsancom/applovin/impl/communicator/CommunicatorMessageImpl;->publisherRef:Ljava/lang/ref/WeakReference;

    iput-boolean p4, p0, Lccsancom/applovin/impl/communicator/CommunicatorMessageImpl;->sticky:Z

    iput-object p1, p0, Lccsancom/applovin/impl/communicator/CommunicatorMessageImpl;->data:Lccsanandroid/os/Bundle;

    return-void
.end method

.method public static create(Lccsanandroid/os/Bundle;Ljava/lang/String;Lccsancom/applovin/communicator/AppLovinCommunicatorPublisher;Z)Lccsancom/applovin/communicator/AppLovinCommunicatorMessage;
    .locals 1

    new-instance v0, Lccsancom/applovin/communicator/AppLovinCommunicatorMessage;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/applovin/communicator/AppLovinCommunicatorMessage;-><init>(Lccsanandroid/os/Bundle;Ljava/lang/String;Lccsancom/applovin/communicator/AppLovinCommunicatorPublisher;)V

    iput-boolean p3, v0, Lccsancom/applovin/communicator/AppLovinCommunicatorMessage;->sticky:Z

    return-object v0
.end method


# virtual methods
.method a()Z
    .locals 1

    iget-boolean v0, p0, Lccsancom/applovin/impl/communicator/CommunicatorMessageImpl;->sticky:Z

    return v0
.end method

.method public abstract getMessageData()Lccsanandroid/os/Bundle;
.end method

.method public abstract getPublisherId()Ljava/lang/String;
.end method

.method public abstract getTopic()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppLovinCommunicatorMessage{publisherId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/applovin/impl/communicator/CommunicatorMessageImpl;->getPublisherId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", topic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/applovin/impl/communicator/CommunicatorMessageImpl;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", uniqueId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/applovin/impl/communicator/CommunicatorMessageImpl;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/communicator/CommunicatorMessageImpl;->data:Lccsanandroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sticky="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsancom/applovin/impl/communicator/CommunicatorMessageImpl;->sticky:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
