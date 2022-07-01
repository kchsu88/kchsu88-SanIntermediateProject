.class public final Lccsanandroid/support/v4/media/MediaMetadataCompat$Builder;
.super Ljava/lang/Object;
.source "MediaMetadataCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/MediaMetadataCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mBundle:Lccsanandroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lccsanandroid/support/v4/media/MediaMetadataCompat$Builder;->mBundle:Lccsanandroid/os/Bundle;

    .line 667
    return-void
.end method

.method public constructor <init>(Lccsanandroid/support/v4/media/MediaMetadataCompat;)V
    .locals 2
    .param p1, "source"    # Lccsanandroid/support/v4/media/MediaMetadataCompat;

    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    new-instance v0, Lccsanandroid/os/Bundle;

    iget-object v1, p1, Lccsanandroid/support/v4/media/MediaMetadataCompat;->mBundle:Lccsanandroid/os/Bundle;

    invoke-direct {v0, v1}, Lccsanandroid/os/Bundle;-><init>(Lccsanandroid/os/Bundle;)V

    iput-object v0, p0, Lccsanandroid/support/v4/media/MediaMetadataCompat$Builder;->mBundle:Lccsanandroid/os/Bundle;

    .line 678
    invoke-static {v0}, Lccsanandroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Lccsanandroid/os/Bundle;)V

    .line 679
    return-void
.end method

.method public constructor <init>(Lccsanandroid/support/v4/media/MediaMetadataCompat;I)V
    .locals 5
    .param p1, "source"    # Lccsanandroid/support/v4/media/MediaMetadataCompat;
    .param p2, "maxBitmapSize"    # I

    .line 693
    invoke-direct {p0, p1}, Lccsanandroid/support/v4/media/MediaMetadataCompat$Builder;-><init>(Lccsanandroid/support/v4/media/MediaMetadataCompat;)V

    .line 694
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaMetadataCompat$Builder;->mBundle:Lccsanandroid/os/Bundle;

    invoke-virtual {v0}, Lccsanandroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 695
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lccsanandroid/support/v4/media/MediaMetadataCompat$Builder;->mBundle:Lccsanandroid/os/Bundle;

    invoke-virtual {v2, v1}, Lccsanandroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 696
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Lccsanandroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 697
    move-object v3, v2

    check-cast v3, Lccsanandroid/graphics/Bitmap;

    .line 698
    .local v3, "bmp":Lccsanandroid/graphics/Bitmap;
    invoke-virtual {v3}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gt v4, p2, :cond_0

    invoke-virtual {v3}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-le v4, p2, :cond_1

    .line 699
    :cond_0
    invoke-direct {p0, v3, p2}, Lccsanandroid/support/v4/media/MediaMetadataCompat$Builder;->scaleBitmap(Lccsanandroid/graphics/Bitmap;I)Lccsanandroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lccsanandroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Lccsanandroid/graphics/Bitmap;)Lccsanandroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 702
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "bmp":Lccsanandroid/graphics/Bitmap;
    :cond_1
    goto :goto_0

    .line 703
    :cond_2
    return-void
.end method

.method private scaleBitmap(Lccsanandroid/graphics/Bitmap;I)Lccsanandroid/graphics/Bitmap;
    .locals 7
    .param p1, "bmp"    # Lccsanandroid/graphics/Bitmap;
    .param p2, "maxSize"    # I

    .line 878
    int-to-float v0, p2

    .line 879
    .local v0, "maxSizeF":F
    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 880
    .local v1, "widthScale":F
    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v0, v2

    .line 881
    .local v2, "heightScale":F
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 882
    .local v3, "scale":F
    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v4, v4

    .line 883
    .local v4, "height":I
    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v5, v5

    .line 884
    .local v5, "width":I
    const/4 v6, 0x1

    invoke-static {p1, v5, v4, v6}, Lccsanandroid/graphics/Bitmap;->createScaledBitmap(Lccsanandroid/graphics/Bitmap;IIZ)Lccsanandroid/graphics/Bitmap;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public build()Lccsanandroid/support/v4/media/MediaMetadataCompat;
    .locals 2

    .line 874
    new-instance v0, Lccsanandroid/support/v4/media/MediaMetadataCompat;

    iget-object v1, p0, Lccsanandroid/support/v4/media/MediaMetadataCompat$Builder;->mBundle:Lccsanandroid/os/Bundle;

    invoke-direct {v0, v1}, Lccsanandroid/support/v4/media/MediaMetadataCompat;-><init>(Lccsanandroid/os/Bundle;)V

    return-object v0
.end method

.method public putBitmap(Ljava/lang/String;Lccsanandroid/graphics/Bitmap;)Lccsanandroid/support/v4/media/MediaMetadataCompat$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lccsanandroid/graphics/Bitmap;

    .line 858
    sget-object v0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Lccsanandroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Lccsanandroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 859
    sget-object v0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Lccsanandroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Lccsanandroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 860
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " key cannot be used to put a Bitmap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 864
    :cond_1
    :goto_0
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaMetadataCompat$Builder;->mBundle:Lccsanandroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 865
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Lccsanandroid/support/v4/media/MediaMetadataCompat$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 799
    sget-object v0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Lccsanandroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Lccsanandroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 800
    sget-object v0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Lccsanandroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Lccsanandroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 801
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " key cannot be used to put a long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 805
    :cond_1
    :goto_0
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaMetadataCompat$Builder;->mBundle:Lccsanandroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 806
    return-object p0
.end method

.method public putRating(Ljava/lang/String;Lccsanandroid/support/v4/media/RatingCompat;)Lccsanandroid/support/v4/media/MediaMetadataCompat$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lccsanandroid/support/v4/media/RatingCompat;

    .line 823
    sget-object v0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Lccsanandroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Lccsanandroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 824
    sget-object v0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Lccsanandroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Lccsanandroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 825
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " key cannot be used to put a Rating"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 829
    :cond_1
    :goto_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 832
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaMetadataCompat$Builder;->mBundle:Lccsanandroid/os/Bundle;

    invoke-virtual {p2}, Lccsanandroid/support/v4/media/RatingCompat;->getRating()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/os/Parcelable;

    invoke-virtual {v0, p1, v1}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    goto :goto_1

    .line 834
    :cond_2
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaMetadataCompat$Builder;->mBundle:Lccsanandroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 836
    :goto_1
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/support/v4/media/MediaMetadataCompat$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 769
    sget-object v0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Lccsanandroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Lccsanandroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 770
    sget-object v0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Lccsanandroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Lccsanandroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 771
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " key cannot be used to put a String"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 775
    :cond_1
    :goto_0
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaMetadataCompat$Builder;->mBundle:Lccsanandroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 776
    return-object p0
.end method

.method public putText(Ljava/lang/String;Ljava/lang/CharSequence;)Lccsanandroid/support/v4/media/MediaMetadataCompat$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .line 732
    sget-object v0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Lccsanandroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Lccsanandroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    sget-object v0, Lccsanandroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Lccsanandroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Lccsanandroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 734
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " key cannot be used to put a CharSequence"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 738
    :cond_1
    :goto_0
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaMetadataCompat$Builder;->mBundle:Lccsanandroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 739
    return-object p0
.end method
