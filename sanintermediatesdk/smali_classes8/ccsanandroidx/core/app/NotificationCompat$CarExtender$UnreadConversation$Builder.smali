.class public Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mLatestTimestamp:J

.field private final mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mParticipant:Ljava/lang/String;

.field private mReadPendingIntent:Lccsanandroid/app/PendingIntent;

.field private mRemoteInput:Lccsanandroidx/core/app/RemoteInput;

.field private mReplyPendingIntent:Lccsanandroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 6486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mMessages:Ljava/util/List;

    .line 6487
    iput-object p1, p0, Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mParticipant:Ljava/lang/String;

    .line 6488
    return-void
.end method


# virtual methods
.method public addMessage(Ljava/lang/String;)Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 6499
    if-eqz p1, :cond_0

    .line 6500
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6502
    :cond_0
    return-object p0
.end method

.method public build()Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    .locals 10

    .line 6559
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 6560
    .local v0, "messages":[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    iget-object v1, p0, Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mParticipant:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v6, v2

    .line 6561
    .local v6, "participants":[Ljava/lang/String;
    new-instance v9, Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    iget-object v3, p0, Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mRemoteInput:Lccsanandroidx/core/app/RemoteInput;

    iget-object v4, p0, Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mReplyPendingIntent:Lccsanandroid/app/PendingIntent;

    iget-object v5, p0, Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mReadPendingIntent:Lccsanandroid/app/PendingIntent;

    iget-wide v7, p0, Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mLatestTimestamp:J

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v8}, Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;-><init>([Ljava/lang/String;Lccsanandroidx/core/app/RemoteInput;Lccsanandroid/app/PendingIntent;Lccsanandroid/app/PendingIntent;[Ljava/lang/String;J)V

    return-object v9
.end method

.method public setLatestTimestamp(J)Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    .locals 0
    .param p1, "timestamp"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    .line 6549
    iput-wide p1, p0, Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mLatestTimestamp:J

    .line 6550
    return-object p0
.end method

.method public setReadPendingIntent(Lccsanandroid/app/PendingIntent;)Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    .locals 0
    .param p1, "pendingIntent"    # Lccsanandroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pendingIntent"
        }
    .end annotation

    .line 6533
    iput-object p1, p0, Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mReadPendingIntent:Lccsanandroid/app/PendingIntent;

    .line 6534
    return-object p0
.end method

.method public setReplyAction(Lccsanandroid/app/PendingIntent;Lccsanandroidx/core/app/RemoteInput;)Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    .locals 0
    .param p1, "pendingIntent"    # Lccsanandroid/app/PendingIntent;
    .param p2, "remoteInput"    # Lccsanandroidx/core/app/RemoteInput;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pendingIntent",
            "remoteInput"
        }
    .end annotation

    .line 6518
    iput-object p2, p0, Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mRemoteInput:Lccsanandroidx/core/app/RemoteInput;

    .line 6519
    iput-object p1, p0, Lccsanandroidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mReplyPendingIntent:Lccsanandroid/app/PendingIntent;

    .line 6521
    return-object p0
.end method
