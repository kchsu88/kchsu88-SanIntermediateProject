.class public final Lccsancom/google/android/exoplayer2/metadata/flac/VorbisComment;
.super Ljava/lang/Object;
.source "VorbisComment.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/metadata/Metadata$Entry;


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsancom/google/android/exoplayer2/metadata/flac/VorbisComment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final key:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    new-instance v0, Lccsancom/google/android/exoplayer2/metadata/flac/VorbisComment$1;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/metadata/flac/VorbisComment$1;-><init>()V

    sput-object v0, Lccsancom/google/android/exoplayer2/metadata/flac/VorbisComment;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lccsanandroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Lccsanandroid/os/Parcel;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 79
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 80
    return v0

    .line 82
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 85
    :cond_1
    move-object v2, p1

    check-cast v2, Lccsancom/google/android/exoplayer2/metadata/flac/VorbisComment;

    .line 86
    .local v2, "other":Lccsancom/google/android/exoplayer2/metadata/flac/VorbisComment;
    iget-object v3, p0, Lccsancom/google/android/exoplayer2/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    iget-object v4, v2, Lccsancom/google/android/exoplayer2/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lccsancom/google/android/exoplayer2/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    iget-object v4, v2, Lccsancom/google/android/exoplayer2/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 83
    .end local v2    # "other":Lccsancom/google/android/exoplayer2/metadata/flac/VorbisComment;
    :cond_3
    :goto_1
    return v1
.end method

.method public synthetic getWrappedMetadataBytes()[B
    .locals 1

    invoke-static {p0}, Lccsancom/google/android/exoplayer2/metadata/Metadata$Entry$-CC;->$default$getWrappedMetadataBytes(Lccsancom/google/android/exoplayer2/metadata/Metadata$Entry;)[B

    move-result-object v0

    return-object v0
.end method

.method public synthetic getWrappedMetadataFormat()Lccsancom/google/android/exoplayer2/Format;
    .locals 1

    invoke-static {p0}, Lccsancom/google/android/exoplayer2/metadata/Metadata$Entry$-CC;->$default$getWrappedMetadataFormat(Lccsancom/google/android/exoplayer2/metadata/Metadata$Entry;)Lccsancom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 91
    const/16 v0, 0x11

    .line 92
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 93
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 94
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public populateMediaMetadata(Lccsancom/google/android/exoplayer2/MediaMetadata$Builder;)V
    .locals 2
    .param p1, "builder"    # Lccsancom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 51
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "ARTIST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "ALBUMARTIST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "DESCRIPTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v1, "TITLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v1, "ALBUM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 65
    :pswitch_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsancom/google/android/exoplayer2/MediaMetadata$Builder;->setDescription(Ljava/lang/CharSequence;)Lccsancom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 66
    goto :goto_2

    .line 62
    :pswitch_1
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsancom/google/android/exoplayer2/MediaMetadata$Builder;->setAlbumArtist(Ljava/lang/CharSequence;)Lccsancom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 63
    goto :goto_2

    .line 59
    :pswitch_2
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsancom/google/android/exoplayer2/MediaMetadata$Builder;->setAlbumTitle(Ljava/lang/CharSequence;)Lccsancom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 60
    goto :goto_2

    .line 56
    :pswitch_3
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsancom/google/android/exoplayer2/MediaMetadata$Builder;->setArtist(Ljava/lang/CharSequence;)Lccsancom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 57
    goto :goto_2

    .line 53
    :pswitch_4
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsancom/google/android/exoplayer2/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Lccsancom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 54
    nop

    .line 70
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3b7864f -> :sswitch_4
        0x4c22a38 -> :sswitch_3
        0x198917dc -> :sswitch_2
        0x681d2256 -> :sswitch_1
        0x7395d347 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 74
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "VC: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I

    .line 101
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    return-void
.end method
