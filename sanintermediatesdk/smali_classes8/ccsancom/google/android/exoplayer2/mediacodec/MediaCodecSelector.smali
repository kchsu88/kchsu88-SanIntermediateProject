.class public interface abstract Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecSelector;
.super Ljava/lang/Object;
.source "MediaCodecSelector.java"


# static fields
.field public static final DEFAULT:Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    sget-object v0, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecSelector$$ExternalSyntheticLambda0;->INSTANCE:Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecSelector$$ExternalSyntheticLambda0;

    sput-object v0, Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    return-void
.end method


# virtual methods
.method public abstract getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method
