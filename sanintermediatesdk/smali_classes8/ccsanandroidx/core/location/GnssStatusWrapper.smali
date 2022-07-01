.class Lccsanandroidx/core/location/GnssStatusWrapper;
.super Lccsanandroidx/core/location/GnssStatusCompat;
.source "GnssStatusWrapper.java"


# instance fields
.field private final mWrapped:Lccsanandroid/location/GnssStatus;


# direct methods
.method constructor <init>(Lccsanandroid/location/GnssStatus;)V
    .locals 1
    .param p1, "gnssStatus"    # Lccsanandroid/location/GnssStatus;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gnssStatus"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lccsanandroidx/core/location/GnssStatusCompat;-><init>()V

    .line 38
    invoke-static {p1}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/location/GnssStatus;

    iput-object v0, p0, Lccsanandroidx/core/location/GnssStatusWrapper;->mWrapped:Lccsanandroid/location/GnssStatus;

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 124
    if-ne p0, p1, :cond_0

    .line 125
    const/4 v0, 0x1

    return v0

    .line 127
    :cond_0
    instance-of v0, p1, Lccsanandroidx/core/location/GnssStatusWrapper;

    if-nez v0, :cond_1

    .line 128
    const/4 v0, 0x0

    return v0

    .line 130
    :cond_1
    move-object v0, p1

    check-cast v0, Lccsanandroidx/core/location/GnssStatusWrapper;

    .line 131
    .local v0, "that":Lccsanandroidx/core/location/GnssStatusWrapper;
    iget-object v1, p0, Lccsanandroidx/core/location/GnssStatusWrapper;->mWrapped:Lccsanandroid/location/GnssStatus;

    iget-object v2, v0, Lccsanandroidx/core/location/GnssStatusWrapper;->mWrapped:Lccsanandroid/location/GnssStatus;

    invoke-virtual {v1, v2}, Lccsanandroid/location/GnssStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAzimuthDegrees(I)F
    .locals 1
    .param p1, "satelliteIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "satelliteIndex"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lccsanandroidx/core/location/GnssStatusWrapper;->mWrapped:Lccsanandroid/location/GnssStatus;

    invoke-virtual {v0, p1}, Lccsanandroid/location/GnssStatus;->getAzimuthDegrees(I)F

    move-result v0

    return v0
.end method

.method public getBasebandCn0DbHz(I)F
    .locals 2
    .param p1, "satelliteIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "satelliteIndex"
        }
    .end annotation

    .line 115
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lccsanandroidx/core/location/GnssStatusWrapper;->mWrapped:Lccsanandroid/location/GnssStatus;

    invoke-virtual {v0, p1}, Lccsanandroid/location/GnssStatus;->getBasebandCn0DbHz(I)F

    move-result v0

    return v0

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCarrierFrequencyHz(I)F
    .locals 2
    .param p1, "satelliteIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "satelliteIndex"
        }
    .end annotation

    .line 97
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lccsanandroidx/core/location/GnssStatusWrapper;->mWrapped:Lccsanandroid/location/GnssStatus;

    invoke-virtual {v0, p1}, Lccsanandroid/location/GnssStatus;->getCarrierFrequencyHz(I)F

    move-result v0

    return v0

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCn0DbHz(I)F
    .locals 1
    .param p1, "satelliteIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "satelliteIndex"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lccsanandroidx/core/location/GnssStatusWrapper;->mWrapped:Lccsanandroid/location/GnssStatus;

    invoke-virtual {v0, p1}, Lccsanandroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v0

    return v0
.end method

.method public getConstellationType(I)I
    .locals 1
    .param p1, "satelliteIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "satelliteIndex"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lccsanandroidx/core/location/GnssStatusWrapper;->mWrapped:Lccsanandroid/location/GnssStatus;

    invoke-virtual {v0, p1}, Lccsanandroid/location/GnssStatus;->getConstellationType(I)I

    move-result v0

    return v0
.end method

.method public getElevationDegrees(I)F
    .locals 1
    .param p1, "satelliteIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "satelliteIndex"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lccsanandroidx/core/location/GnssStatusWrapper;->mWrapped:Lccsanandroid/location/GnssStatus;

    invoke-virtual {v0, p1}, Lccsanandroid/location/GnssStatus;->getElevationDegrees(I)F

    move-result v0

    return v0
.end method

.method public getSatelliteCount()I
    .locals 1

    .line 43
    iget-object v0, p0, Lccsanandroidx/core/location/GnssStatusWrapper;->mWrapped:Lccsanandroid/location/GnssStatus;

    invoke-virtual {v0}, Lccsanandroid/location/GnssStatus;->getSatelliteCount()I

    move-result v0

    return v0
.end method

.method public getSvid(I)I
    .locals 1
    .param p1, "satelliteIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "satelliteIndex"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lccsanandroidx/core/location/GnssStatusWrapper;->mWrapped:Lccsanandroid/location/GnssStatus;

    invoke-virtual {v0, p1}, Lccsanandroid/location/GnssStatus;->getSvid(I)I

    move-result v0

    return v0
.end method

.method public hasAlmanacData(I)Z
    .locals 1
    .param p1, "satelliteIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "satelliteIndex"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lccsanandroidx/core/location/GnssStatusWrapper;->mWrapped:Lccsanandroid/location/GnssStatus;

    invoke-virtual {v0, p1}, Lccsanandroid/location/GnssStatus;->hasAlmanacData(I)Z

    move-result v0

    return v0
.end method

.method public hasBasebandCn0DbHz(I)Z
    .locals 2
    .param p1, "satelliteIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "satelliteIndex"
        }
    .end annotation

    .line 106
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lccsanandroidx/core/location/GnssStatusWrapper;->mWrapped:Lccsanandroid/location/GnssStatus;

    invoke-virtual {v0, p1}, Lccsanandroid/location/GnssStatus;->hasBasebandCn0DbHz(I)Z

    move-result v0

    return v0

    .line 109
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasCarrierFrequencyHz(I)Z
    .locals 2
    .param p1, "satelliteIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "satelliteIndex"
        }
    .end annotation

    .line 88
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lccsanandroidx/core/location/GnssStatusWrapper;->mWrapped:Lccsanandroid/location/GnssStatus;

    invoke-virtual {v0, p1}, Lccsanandroid/location/GnssStatus;->hasCarrierFrequencyHz(I)Z

    move-result v0

    return v0

    .line 91
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasEphemerisData(I)Z
    .locals 1
    .param p1, "satelliteIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "satelliteIndex"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lccsanandroidx/core/location/GnssStatusWrapper;->mWrapped:Lccsanandroid/location/GnssStatus;

    invoke-virtual {v0, p1}, Lccsanandroid/location/GnssStatus;->hasEphemerisData(I)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 136
    iget-object v0, p0, Lccsanandroidx/core/location/GnssStatusWrapper;->mWrapped:Lccsanandroid/location/GnssStatus;

    invoke-virtual {v0}, Lccsanandroid/location/GnssStatus;->hashCode()I

    move-result v0

    return v0
.end method

.method public usedInFix(I)Z
    .locals 1
    .param p1, "satelliteIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "satelliteIndex"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lccsanandroidx/core/location/GnssStatusWrapper;->mWrapped:Lccsanandroid/location/GnssStatus;

    invoke-virtual {v0, p1}, Lccsanandroid/location/GnssStatus;->usedInFix(I)Z

    move-result v0

    return v0
.end method
