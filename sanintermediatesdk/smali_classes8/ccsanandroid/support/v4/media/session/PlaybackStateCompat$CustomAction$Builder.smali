.class public final Lccsanandroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;
.super Ljava/lang/Object;
.source "PlaybackStateCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mAction:Ljava/lang/String;

.field private mExtras:Lccsanandroid/os/Bundle;

.field private final mIcon:I

.field private final mName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # I

    .line 1050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1051
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1055
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1059
    if-eqz p3, :cond_0

    .line 1063
    iput-object p1, p0, Lccsanandroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mAction:Ljava/lang/String;

    .line 1064
    iput-object p2, p0, Lccsanandroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mName:Ljava/lang/CharSequence;

    .line 1065
    iput p3, p0, Lccsanandroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mIcon:I

    .line 1066
    return-void

    .line 1060
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify an icon resource id to build a CustomAction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1056
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify a name to build a CustomAction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1052
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify an action to build a CustomAction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lccsanandroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
    .locals 5

    .line 1089
    new-instance v0, Lccsanandroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    iget-object v1, p0, Lccsanandroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mAction:Ljava/lang/String;

    iget-object v2, p0, Lccsanandroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mName:Ljava/lang/CharSequence;

    iget v3, p0, Lccsanandroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mIcon:I

    iget-object v4, p0, Lccsanandroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mExtras:Lccsanandroid/os/Bundle;

    invoke-direct {v0, v1, v2, v3, v4}, Lccsanandroid/support/v4/media/session/PlaybackStateCompat$CustomAction;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILccsanandroid/os/Bundle;)V

    return-object v0
.end method

.method public setExtras(Lccsanandroid/os/Bundle;)Lccsanandroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;
    .locals 0
    .param p1, "extras"    # Lccsanandroid/os/Bundle;

    .line 1078
    iput-object p1, p0, Lccsanandroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mExtras:Lccsanandroid/os/Bundle;

    .line 1079
    return-object p0
.end method
