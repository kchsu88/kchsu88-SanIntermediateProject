.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;
.source "Atom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContainerAtom"
.end annotation


# instance fields
.field public final containerChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field public final endPosition:J

.field public final leafChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 191
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;-><init>(I)V

    .line 192
    iput-wide p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    .line 193
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    .line 194
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    .line 195
    return-void
.end method


# virtual methods
.method public final add(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V
    .locals 1

    .line 212
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    return-void
.end method

.method public final add(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method

.method public final getChildAtomOfTypeCount(I)I
    .locals 5

    .line 262
    nop

    .line 263
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 264
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 265
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 266
    iget v4, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    if-ne v4, p1, :cond_0

    .line 267
    add-int/lit8 v3, v3, 0x1

    .line 264
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 271
    nop

    :goto_1
    if-ge v1, v0, :cond_3

    .line 272
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 273
    iget v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    if-ne v2, p1, :cond_2

    .line 274
    add-int/lit8 v3, v3, 0x1

    .line 271
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 277
    :cond_3
    return v3
.end method

.method public final getContainerAtomOfType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .locals 4

    .line 245
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 246
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 247
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 248
    iget v3, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    if-ne v3, p1, :cond_0

    .line 249
    return-object v2

    .line 246
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getLeafAtomOfType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .locals 4

    .line 225
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 226
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 227
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 228
    iget v3, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    if-ne v3, p1, :cond_0

    .line 229
    return-object v2

    .line 226
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " leaves: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    .line 283
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " containers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    .line 284
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    return-object v0
.end method
