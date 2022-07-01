.class public Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/provider/FontsContractCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontInfo"
.end annotation


# instance fields
.field private final mItalic:Z

.field private final mResultCode:I

.field private final mTtcIndex:I

.field private final mUri:Lccsanandroid/net/Uri;

.field private final mWeight:I


# direct methods
.method public constructor <init>(Lccsanandroid/net/Uri;IIZI)V
    .locals 1
    .param p1, "uri"    # Lccsanandroid/net/Uri;
    .param p2, "ttcIndex"    # I
    .param p3, "weight"    # I
    .param p4, "italic"    # Z
    .param p5, "resultCode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uri",
            "ttcIndex",
            "weight",
            "italic",
            "resultCode"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    invoke-static {p1}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/net/Uri;

    iput-object v0, p0, Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;->mUri:Lccsanandroid/net/Uri;

    .line 294
    iput p2, p0, Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;->mTtcIndex:I

    .line 295
    iput p3, p0, Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;->mWeight:I

    .line 296
    iput-boolean p4, p0, Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;->mItalic:Z

    .line 297
    iput p5, p0, Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;->mResultCode:I

    .line 298
    return-void
.end method

.method static create(Lccsanandroid/net/Uri;IIZI)Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;
    .locals 7
    .param p0, "uri"    # Lccsanandroid/net/Uri;
    .param p1, "ttcIndex"    # I
    .param p2, "weight"    # I
    .param p3, "italic"    # Z
    .param p4, "resultCode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uri",
            "ttcIndex",
            "weight",
            "italic",
            "resultCode"
        }
    .end annotation

    .line 308
    new-instance v6, Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;-><init>(Lccsanandroid/net/Uri;IIZI)V

    return-object v6
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    .line 345
    iget v0, p0, Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;->mResultCode:I

    return v0
.end method

.method public getTtcIndex()I
    .locals 1

    .line 322
    iget v0, p0, Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;->mTtcIndex:I

    return v0
.end method

.method public getUri()Lccsanandroid/net/Uri;
    .locals 1

    .line 315
    iget-object v0, p0, Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;->mUri:Lccsanandroid/net/Uri;

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .line 329
    iget v0, p0, Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;->mWeight:I

    return v0
.end method

.method public isItalic()Z
    .locals 1

    .line 336
    iget-boolean v0, p0, Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;->mItalic:Z

    return v0
.end method
