.class final Lccsancom/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher$EventWithSubscriber;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventWithSubscriber"
.end annotation


# instance fields
.field private final event:Ljava/lang/Object;

.field private final subscriber:Lccsancom/google/common/eventbus/Subscriber;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lccsancom/google/common/eventbus/Subscriber;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/Object;
    .param p2, "subscriber"    # Lccsancom/google/common/eventbus/Subscriber;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lccsancom/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher$EventWithSubscriber;->event:Ljava/lang/Object;

    .line 173
    iput-object p2, p0, Lccsancom/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher$EventWithSubscriber;->subscriber:Lccsancom/google/common/eventbus/Subscriber;

    .line 174
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lccsancom/google/common/eventbus/Subscriber;Lccsancom/google/common/eventbus/Dispatcher$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lccsancom/google/common/eventbus/Subscriber;
    .param p3, "x2"    # Lccsancom/google/common/eventbus/Dispatcher$1;

    .line 167
    invoke-direct {p0, p1, p2}, Lccsancom/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher$EventWithSubscriber;-><init>(Ljava/lang/Object;Lccsancom/google/common/eventbus/Subscriber;)V

    return-void
.end method

.method static synthetic access$700(Lccsancom/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher$EventWithSubscriber;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher$EventWithSubscriber;

    .line 167
    iget-object v0, p0, Lccsancom/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher$EventWithSubscriber;->event:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lccsancom/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher$EventWithSubscriber;)Lccsancom/google/common/eventbus/Subscriber;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher$EventWithSubscriber;

    .line 167
    iget-object v0, p0, Lccsancom/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher$EventWithSubscriber;->subscriber:Lccsancom/google/common/eventbus/Subscriber;

    return-object v0
.end method
