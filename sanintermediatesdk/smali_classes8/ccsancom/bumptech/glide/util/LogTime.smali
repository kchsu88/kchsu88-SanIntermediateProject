.class public final Lccsancom/bumptech/glide/util/LogTime;
.super Ljava/lang/Object;
.source "LogTime.java"


# static fields
.field private static final MILLIS_MULTIPLIER:D


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 11
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const/16 v3, 0x11

    if-gt v3, v0, :cond_0

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    const-wide/high16 v5, 0x4018000000000000L    # 6.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    div-double/2addr v1, v3

    :cond_0
    sput-wide v1, Lccsancom/bumptech/glide/util/LogTime;->MILLIS_MULTIPLIER:D

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static getElapsedMillis(J)D
    .locals 4
    .param p0, "logTime"    # J

    .line 37
    invoke-static {}, Lccsancom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    long-to-double v0, v0

    sget-wide v2, Lccsancom/bumptech/glide/util/LogTime;->MILLIS_MULTIPLIER:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public static getLogTime()J
    .locals 2

    .line 24
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-gt v1, v0, :cond_0

    .line 25
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    return-wide v0

    .line 27
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
