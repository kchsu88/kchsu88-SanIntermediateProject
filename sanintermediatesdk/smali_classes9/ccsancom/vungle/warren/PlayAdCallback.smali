.class public interface abstract Lccsancom/vungle/warren/PlayAdCallback;
.super Ljava/lang/Object;
.source "PlayAdCallback.java"


# virtual methods
.method public abstract creativeId(Ljava/lang/String;)V
.end method

.method public abstract onAdClick(Ljava/lang/String;)V
.end method

.method public abstract onAdEnd(Ljava/lang/String;)V
.end method

.method public abstract onAdEnd(Ljava/lang/String;ZZ)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onAdLeftApplication(Ljava/lang/String;)V
.end method

.method public abstract onAdRewarded(Ljava/lang/String;)V
.end method

.method public abstract onAdStart(Ljava/lang/String;)V
.end method

.method public abstract onAdViewed(Ljava/lang/String;)V
.end method

.method public abstract onError(Ljava/lang/String;Lccsancom/vungle/warren/error/VungleException;)V
.end method
