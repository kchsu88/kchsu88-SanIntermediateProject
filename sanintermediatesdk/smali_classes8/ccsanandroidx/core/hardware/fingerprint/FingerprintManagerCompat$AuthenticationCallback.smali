.class public abstract Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
.super Ljava/lang/Object;
.source "FingerprintManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AuthenticationCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "errMsgId",
            "errString"
        }
    .end annotation

    .line 277
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 0

    .line 297
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helpMsgId",
            "helpString"
        }
    .end annotation

    .line 286
    return-void
.end method

.method public onAuthenticationSucceeded(Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;)V
    .locals 0
    .param p1, "result"    # Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 292
    return-void
.end method
