.class public final Lccsancom/google/android/exoplayer2/text/CueEncoder;
.super Ljava/lang/Object;
.source "CueEncoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/util/List;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/google/android/exoplayer2/text/Cue;",
            ">;)[B"
        }
    .end annotation

    .line 34
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lccsancom/google/android/exoplayer2/text/Cue;>;"
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/util/BundleableUtil;->toBundleArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    .line 35
    .local v0, "bundledCues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/os/Bundle;>;"
    new-instance v1, Lccsanandroid/os/Bundle;

    invoke-direct {v1}, Lccsanandroid/os/Bundle;-><init>()V

    .line 36
    .local v1, "allCuesBundle":Lccsanandroid/os/Bundle;
    const-string v2, "c"

    invoke-virtual {v1, v2, v0}, Lccsanandroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 37
    invoke-static {}, Lccsanandroid/os/Parcel;->obtain()Lccsanandroid/os/Parcel;

    move-result-object v2

    .line 38
    .local v2, "parcel":Lccsanandroid/os/Parcel;
    invoke-virtual {v2, v1}, Lccsanandroid/os/Parcel;->writeBundle(Lccsanandroid/os/Bundle;)V

    .line 39
    invoke-virtual {v2}, Lccsanandroid/os/Parcel;->marshall()[B

    move-result-object v3

    .line 40
    .local v3, "bytes":[B
    invoke-virtual {v2}, Lccsanandroid/os/Parcel;->recycle()V

    .line 42
    return-object v3
.end method
