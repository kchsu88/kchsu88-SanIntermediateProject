.class Lccsanandroidx/core/location/LocationManagerCompat$GpsStatusTransport$4;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/core/location/LocationManagerCompat$GpsStatusTransport;->onGpsStatusChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/core/location/LocationManagerCompat$GpsStatusTransport;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$gnssStatus:Lccsanandroidx/core/location/GnssStatusCompat;


# direct methods
.method constructor <init>(Lccsanandroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;Lccsanandroidx/core/location/GnssStatusCompat;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$executor",
            "val$gnssStatus"
        }
    .end annotation

    .line 612
    iput-object p1, p0, Lccsanandroidx/core/location/LocationManagerCompat$GpsStatusTransport$4;->this$0:Lccsanandroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    iput-object p2, p0, Lccsanandroidx/core/location/LocationManagerCompat$GpsStatusTransport$4;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lccsanandroidx/core/location/LocationManagerCompat$GpsStatusTransport$4;->val$gnssStatus:Lccsanandroidx/core/location/GnssStatusCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 615
    iget-object v0, p0, Lccsanandroidx/core/location/LocationManagerCompat$GpsStatusTransport$4;->this$0:Lccsanandroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    iget-object v0, v0, Lccsanandroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lccsanandroidx/core/location/LocationManagerCompat$GpsStatusTransport$4;->val$executor:Ljava/util/concurrent/Executor;

    if-eq v0, v1, :cond_0

    .line 616
    return-void

    .line 618
    :cond_0
    iget-object v0, p0, Lccsanandroidx/core/location/LocationManagerCompat$GpsStatusTransport$4;->this$0:Lccsanandroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    iget-object v0, v0, Lccsanandroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mCallback:Lccsanandroidx/core/location/GnssStatusCompat$Callback;

    iget-object v1, p0, Lccsanandroidx/core/location/LocationManagerCompat$GpsStatusTransport$4;->val$gnssStatus:Lccsanandroidx/core/location/GnssStatusCompat;

    invoke-virtual {v0, v1}, Lccsanandroidx/core/location/GnssStatusCompat$Callback;->onSatelliteStatusChanged(Lccsanandroidx/core/location/GnssStatusCompat;)V

    .line 619
    return-void
.end method
