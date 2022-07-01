.class public final Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;
.super Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;
.source "AdsMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;,
        Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;,
        Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;,
        Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/android/exoplayer2/source/CompositeMediaSource<",
        "Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHILD_SOURCE_MEDIA_PERIOD_ID:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;


# instance fields
.field private final adMediaSourceFactory:Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;

.field private adMediaSourceHolders:[[Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

.field private adPlaybackState:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

.field private final adTagDataSpec:Lccsancom/google/android/exoplayer2/upstream/DataSpec;

.field private final adViewProvider:Lccsancom/google/android/exoplayer2/ui/AdViewProvider;

.field private final adsId:Ljava/lang/Object;

.field private final adsLoader:Lccsancom/google/android/exoplayer2/source/ads/AdsLoader;

.field private componentListener:Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

.field private final contentMediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

.field private contentTimeline:Lccsancom/google/android/exoplayer2/Timeline;

.field private final mainHandler:Lccsanandroid/os/Handler;

.field private final period:Lccsancom/google/android/exoplayer2/Timeline$Period;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 126
    new-instance v0, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->CHILD_SOURCE_MEDIA_PERIOD_ID:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    return-void
.end method

.method public constructor <init>(Lccsancom/google/android/exoplayer2/source/MediaSource;Lccsancom/google/android/exoplayer2/upstream/DataSpec;Ljava/lang/Object;Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;Lccsancom/google/android/exoplayer2/source/ads/AdsLoader;Lccsancom/google/android/exoplayer2/ui/AdViewProvider;)V
    .locals 2
    .param p1, "contentMediaSource"    # Lccsancom/google/android/exoplayer2/source/MediaSource;
    .param p2, "adTagDataSpec"    # Lccsancom/google/android/exoplayer2/upstream/DataSpec;
    .param p3, "adsId"    # Ljava/lang/Object;
    .param p4, "adMediaSourceFactory"    # Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;
    .param p5, "adsLoader"    # Lccsancom/google/android/exoplayer2/source/ads/AdsLoader;
    .param p6, "adViewProvider"    # Lccsancom/google/android/exoplayer2/ui/AdViewProvider;

    .line 164
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;-><init>()V

    .line 165
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    .line 166
    iput-object p4, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceFactory:Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;

    .line 167
    iput-object p5, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adsLoader:Lccsancom/google/android/exoplayer2/source/ads/AdsLoader;

    .line 168
    iput-object p6, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adViewProvider:Lccsancom/google/android/exoplayer2/ui/AdViewProvider;

    .line 169
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adTagDataSpec:Lccsancom/google/android/exoplayer2/upstream/DataSpec;

    .line 170
    iput-object p3, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adsId:Ljava/lang/Object;

    .line 171
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->mainHandler:Lccsanandroid/os/Handler;

    .line 172
    new-instance v0, Lccsancom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->period:Lccsancom/google/android/exoplayer2/Timeline$Period;

    .line 173
    const/4 v0, 0x0

    new-array v0, v0, [[Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 174
    invoke-interface {p4}, Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;->getSupportedTypes()[I

    move-result-object v0

    invoke-interface {p5, v0}, Lccsancom/google/android/exoplayer2/source/ads/AdsLoader;->setSupportedContentTypes([I)V

    .line 175
    return-void
.end method

.method static synthetic access$000(Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;
    .param p1, "x1"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 60
    invoke-virtual {p0, p1}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->createEventDispatcher(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;
    .param p1, "x1"    # Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 60
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->onAdPlaybackState(Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    return-void
.end method

.method static synthetic access$200(Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lccsanandroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .line 60
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->mainHandler:Lccsanandroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;
    .param p1, "x1"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 60
    invoke-virtual {p0, p1}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->createEventDispatcher(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lccsancom/google/android/exoplayer2/source/ads/AdsLoader;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .line 60
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adsLoader:Lccsancom/google/android/exoplayer2/source/ads/AdsLoader;

    return-object v0
.end method

.method static synthetic access$500(Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;Ljava/lang/Object;Lccsancom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Lccsancom/google/android/exoplayer2/source/MediaSource;

    .line 60
    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->prepareChildSource(Ljava/lang/Object;Lccsancom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method static synthetic access$600(Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lccsancom/google/android/exoplayer2/Timeline$Period;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .line 60
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->period:Lccsancom/google/android/exoplayer2/Timeline$Period;

    return-object v0
.end method

.method static synthetic access$700(Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 60
    invoke-virtual {p0, p1}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->releaseChildSource(Ljava/lang/Object;)V

    return-void
.end method

.method private getAdDurationsUs()[[J
    .locals 7

    .line 343
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    array-length v0, v0

    new-array v0, v0, [[J

    .line 344
    .local v0, "adDurationsUs":[[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 345
    aget-object v2, v2, v1

    array-length v2, v2

    new-array v2, v2, [J

    aput-object v2, v0, v1

    .line 346
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v3, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    aget-object v4, v3, v1

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 347
    aget-object v3, v3, v1

    aget-object v3, v3, v2

    .line 348
    .local v3, "holder":Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;
    aget-object v4, v0, v1

    if-nez v3, :cond_0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->getDurationUs()J

    move-result-wide v5

    :goto_2
    aput-wide v5, v4, v2

    .line 346
    .end local v3    # "holder":Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 344
    .end local v2    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 351
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method private maybeUpdateAdMediaSources()V
    .locals 10

    .line 297
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 298
    .local v0, "adPlaybackState":Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;
    if-nez v0, :cond_0

    .line 299
    return-void

    .line 301
    :cond_0
    const/4 v1, 0x0

    .local v1, "adGroupIndex":I
    :goto_0
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 302
    const/4 v2, 0x0

    .line 303
    .local v2, "adIndexInAdGroup":I
    :goto_1
    iget-object v3, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    aget-object v4, v3, v1

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 306
    aget-object v3, v3, v1

    aget-object v3, v3, v2

    .line 308
    .local v3, "adMediaSourceHolder":Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;
    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v4

    .line 309
    .local v4, "adGroup":Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    if-eqz v3, :cond_2

    .line 310
    invoke-virtual {v3}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->hasMediaSource()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v4, Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Lccsanandroid/net/Uri;

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 312
    iget-object v5, v4, Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Lccsanandroid/net/Uri;

    aget-object v5, v5, v2

    .line 313
    .local v5, "adUri":Lccsanandroid/net/Uri;
    if-eqz v5, :cond_2

    .line 314
    new-instance v6, Lccsancom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v6}, Lccsancom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    invoke-virtual {v6, v5}, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->setUri(Lccsanandroid/net/Uri;)Lccsancom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v6

    .line 317
    .local v6, "adMediaItem":Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    iget-object v7, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    .line 318
    invoke-interface {v7}, Lccsancom/google/android/exoplayer2/source/MediaSource;->getMediaItem()Lccsancom/google/android/exoplayer2/MediaItem;

    move-result-object v7

    iget-object v7, v7, Lccsancom/google/android/exoplayer2/MediaItem;->localConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    .line 319
    .local v7, "contentLocalConfiguration":Lccsancom/google/android/exoplayer2/MediaItem$LocalConfiguration;
    if-eqz v7, :cond_1

    .line 320
    iget-object v8, v7, Lccsancom/google/android/exoplayer2/MediaItem$LocalConfiguration;->drmConfiguration:Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    invoke-virtual {v6, v8}, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->setDrmConfiguration(Lccsancom/google/android/exoplayer2/MediaItem$DrmConfiguration;)Lccsancom/google/android/exoplayer2/MediaItem$Builder;

    .line 322
    :cond_1
    iget-object v8, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceFactory:Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;

    invoke-virtual {v6}, Lccsancom/google/android/exoplayer2/MediaItem$Builder;->build()Lccsancom/google/android/exoplayer2/MediaItem;

    move-result-object v9

    invoke-interface {v8, v9}, Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;->createMediaSource(Lccsancom/google/android/exoplayer2/MediaItem;)Lccsancom/google/android/exoplayer2/source/MediaSource;

    move-result-object v8

    .line 323
    .local v8, "adMediaSource":Lccsancom/google/android/exoplayer2/source/MediaSource;
    invoke-virtual {v3, v8, v5}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->initializeWithMediaSource(Lccsancom/google/android/exoplayer2/source/MediaSource;Lccsanandroid/net/Uri;)V

    .line 304
    .end local v3    # "adMediaSourceHolder":Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;
    .end local v4    # "adGroup":Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    .end local v5    # "adUri":Lccsanandroid/net/Uri;
    .end local v6    # "adMediaItem":Lccsancom/google/android/exoplayer2/MediaItem$Builder;
    .end local v7    # "contentLocalConfiguration":Lccsancom/google/android/exoplayer2/MediaItem$LocalConfiguration;
    .end local v8    # "adMediaSource":Lccsancom/google/android/exoplayer2/source/MediaSource;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 301
    .end local v2    # "adIndexInAdGroup":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    .end local v1    # "adGroupIndex":I
    :cond_4
    return-void
.end method

.method private maybeUpdateSourceInfo()V
    .locals 3

    .line 331
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentTimeline:Lccsancom/google/android/exoplayer2/Timeline;

    .line 332
    .local v0, "contentTimeline":Lccsancom/google/android/exoplayer2/Timeline;
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 333
    iget v1, v1, Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-nez v1, :cond_0

    .line 334
    invoke-virtual {p0, v0}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->refreshSourceInfo(Lccsancom/google/android/exoplayer2/Timeline;)V

    goto :goto_0

    .line 336
    :cond_0
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->getAdDurationsUs()[[J

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;->withAdDurationsUs([[J)Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 337
    new-instance v1, Lccsancom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-direct {v1, v0, v2}, Lccsancom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;-><init>(Lccsancom/google/android/exoplayer2/Timeline;Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->refreshSourceInfo(Lccsancom/google/android/exoplayer2/Timeline;)V

    .line 340
    :cond_1
    :goto_0
    return-void
.end method

.method private onAdPlaybackState(Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;)V
    .locals 3
    .param p1, "adPlaybackState"    # Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 281
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 282
    iget v0, p1, Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    new-array v0, v0, [[Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 283
    new-array v1, v1, [Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 285
    :cond_0
    iget v0, p1, Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget v2, v2, Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 287
    :goto_0
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 288
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->maybeUpdateAdMediaSources()V

    .line 289
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->maybeUpdateSourceInfo()V

    .line 290
    return-void
.end method


# virtual methods
.method public createPeriod(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/upstream/Allocator;J)Lccsancom/google/android/exoplayer2/source/MediaPeriod;
    .locals 6
    .param p1, "id"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Lccsancom/google/android/exoplayer2/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 200
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 201
    .local v0, "adPlaybackState":Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;
    iget v1, v0, Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-lez v1, :cond_2

    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    iget v1, p1, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 203
    .local v1, "adGroupIndex":I
    iget v2, p1, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 204
    .local v2, "adIndexInAdGroup":I
    iget-object v3, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    aget-object v4, v3, v1

    array-length v4, v4

    if-gt v4, v2, :cond_0

    .line 205
    add-int/lit8 v4, v2, 0x1

    .line 206
    .local v4, "adCount":I
    aget-object v5, v3, v1

    .line 207
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    aput-object v5, v3, v1

    .line 210
    .end local v4    # "adCount":I
    :cond_0
    iget-object v3, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    .line 212
    .local v3, "adMediaSourceHolder":Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;
    if-nez v3, :cond_1

    .line 213
    new-instance v4, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    invoke-direct {v4, p0, p1}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;-><init>(Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    move-object v3, v4

    .line 214
    iget-object v4, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    aget-object v4, v4, v1

    aput-object v3, v4, v2

    .line 215
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->maybeUpdateAdMediaSources()V

    .line 217
    :cond_1
    invoke-virtual {v3, p1, p2, p3, p4}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->createMediaPeriod(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/upstream/Allocator;J)Lccsancom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v4

    return-object v4

    .line 219
    .end local v1    # "adGroupIndex":I
    .end local v2    # "adIndexInAdGroup":I
    .end local v3    # "adMediaSourceHolder":Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;
    :cond_2
    new-instance v1, Lccsancom/google/android/exoplayer2/source/MaskingMediaPeriod;

    invoke-direct {v1, p1, p2, p3, p4}, Lccsancom/google/android/exoplayer2/source/MaskingMediaPeriod;-><init>(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/upstream/Allocator;J)V

    .line 220
    .local v1, "mediaPeriod":Lccsancom/google/android/exoplayer2/source/MaskingMediaPeriod;
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {v1, v2}, Lccsancom/google/android/exoplayer2/source/MaskingMediaPeriod;->setMediaSource(Lccsancom/google/android/exoplayer2/source/MediaSource;)V

    .line 221
    invoke-virtual {v1, p1}, Lccsancom/google/android/exoplayer2/source/MaskingMediaPeriod;->createPeriod(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    .line 222
    return-object v1
.end method

.method public getMediaItem()Lccsancom/google/android/exoplayer2/MediaItem;
    .locals 1

    .line 179
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/source/MediaSource;->getMediaItem()Lccsancom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 1
    .param p1, "childId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 275
    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    return-object v0
.end method

.method protected bridge synthetic getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 0

    .line 60
    check-cast p1, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$prepareSourceInternal$0$com-google-android-exoplayer2-source-ads-AdsMediaSource(Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;)V
    .locals 6
    .param p1, "componentListener"    # Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    .line 190
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adsLoader:Lccsancom/google/android/exoplayer2/source/ads/AdsLoader;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adTagDataSpec:Lccsancom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v3, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adsId:Ljava/lang/Object;

    iget-object v4, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adViewProvider:Lccsancom/google/android/exoplayer2/ui/AdViewProvider;

    move-object v1, p0

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lccsancom/google/android/exoplayer2/source/ads/AdsLoader;->start(Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;Lccsancom/google/android/exoplayer2/upstream/DataSpec;Ljava/lang/Object;Lccsancom/google/android/exoplayer2/ui/AdViewProvider;Lccsancom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;)V

    return-void
.end method

.method public synthetic lambda$releaseSourceInternal$1$com-google-android-exoplayer2-source-ads-AdsMediaSource(Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;)V
    .locals 1
    .param p1, "componentListener"    # Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    .line 252
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adsLoader:Lccsancom/google/android/exoplayer2/source/ads/AdsLoader;

    invoke-interface {v0, p0, p1}, Lccsancom/google/android/exoplayer2/source/ads/AdsLoader;->stop(Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;Lccsancom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;)V

    return-void
.end method

.method protected onChildSourceInfoRefreshed(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/MediaSource;Lccsancom/google/android/exoplayer2/Timeline;)V
    .locals 3
    .param p1, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "mediaSource"    # Lccsancom/google/android/exoplayer2/source/MediaSource;
    .param p3, "timeline"    # Lccsancom/google/android/exoplayer2/Timeline;

    .line 258
    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget v0, p1, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 260
    .local v0, "adGroupIndex":I
    iget v1, p1, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 261
    .local v1, "adIndexInAdGroup":I
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 262
    invoke-virtual {v2, p3}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->handleSourceInfoRefresh(Lccsancom/google/android/exoplayer2/Timeline;)V

    .line 263
    .end local v0    # "adGroupIndex":I
    .end local v1    # "adIndexInAdGroup":I
    goto :goto_1

    .line 264
    :cond_0
    invoke-virtual {p3}, Lccsancom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 265
    iput-object p3, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentTimeline:Lccsancom/google/android/exoplayer2/Timeline;

    .line 267
    :goto_1
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->maybeUpdateSourceInfo()V

    .line 268
    return-void
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Lccsancom/google/android/exoplayer2/source/MediaSource;Lccsancom/google/android/exoplayer2/Timeline;)V
    .locals 0

    .line 60
    check-cast p1, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->onChildSourceInfoRefreshed(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/source/MediaSource;Lccsancom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method protected prepareSourceInternal(Lccsancom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 3
    .param p1, "mediaTransferListener"    # Lccsancom/google/android/exoplayer2/upstream/TransferListener;

    .line 184
    invoke-super {p0, p1}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;->prepareSourceInternal(Lccsancom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 185
    new-instance v0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    invoke-direct {v0, p0}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;-><init>(Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;)V

    .line 186
    .local v0, "componentListener":Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;
    iput-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->componentListener:Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    .line 187
    sget-object v1, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->CHILD_SOURCE_MEDIA_PERIOD_ID:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lccsancom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {p0, v1, v2}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->prepareChildSource(Ljava/lang/Object;Lccsancom/google/android/exoplayer2/source/MediaSource;)V

    .line 188
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->mainHandler:Lccsanandroid/os/Handler;

    new-instance v2, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$$ExternalSyntheticLambda0;-><init>(Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;)V

    invoke-virtual {v1, v2}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 196
    return-void
.end method

.method public releasePeriod(Lccsancom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 6
    .param p1, "mediaPeriod"    # Lccsancom/google/android/exoplayer2/source/MediaPeriod;

    .line 228
    move-object v0, p1

    check-cast v0, Lccsancom/google/android/exoplayer2/source/MaskingMediaPeriod;

    .line 229
    .local v0, "maskingMediaPeriod":Lccsancom/google/android/exoplayer2/source/MaskingMediaPeriod;
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/source/MaskingMediaPeriod;->id:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 230
    .local v1, "id":Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    iget v3, v1, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    aget-object v2, v2, v3

    iget v3, v1, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    aget-object v2, v2, v3

    .line 232
    invoke-static {v2}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 233
    .local v2, "adMediaSourceHolder":Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;
    invoke-virtual {v2, v0}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->releaseMediaPeriod(Lccsancom/google/android/exoplayer2/source/MaskingMediaPeriod;)V

    .line 234
    invoke-virtual {v2}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->isInactive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    invoke-virtual {v2}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->release()V

    .line 236
    iget-object v3, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    iget v4, v1, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    aget-object v3, v3, v4

    iget v4, v1, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 238
    .end local v2    # "adMediaSourceHolder":Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;
    :cond_0
    goto :goto_0

    .line 239
    :cond_1
    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/source/MaskingMediaPeriod;->releasePeriod()V

    .line 241
    :goto_0
    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 3

    .line 245
    invoke-super {p0}, Lccsancom/google/android/exoplayer2/source/CompositeMediaSource;->releaseSourceInternal()V

    .line 246
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->componentListener:Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    .line 247
    .local v0, "componentListener":Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;
    const/4 v1, 0x0

    iput-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->componentListener:Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    .line 248
    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->stop()V

    .line 249
    iput-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentTimeline:Lccsancom/google/android/exoplayer2/Timeline;

    .line 250
    iput-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lccsancom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 251
    const/4 v1, 0x0

    new-array v1, v1, [[Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    iput-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 252
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;->mainHandler:Lccsanandroid/os/Handler;

    new-instance v2, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$$ExternalSyntheticLambda1;-><init>(Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource;Lccsancom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;)V

    invoke-virtual {v1, v2}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    return-void
.end method
