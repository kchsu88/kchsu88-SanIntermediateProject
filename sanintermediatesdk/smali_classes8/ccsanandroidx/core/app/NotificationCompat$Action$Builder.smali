.class public final Lccsanandroidx/core/app/NotificationCompat$Action$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/app/NotificationCompat$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAllowGeneratedReplies:Z

.field private final mExtras:Lccsanandroid/os/Bundle;

.field private final mIcon:Lccsanandroidx/core/graphics/drawable/IconCompat;

.field private final mIntent:Lccsanandroid/app/PendingIntent;

.field private mIsContextual:Z

.field private mRemoteInputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsanandroidx/core/app/RemoteInput;",
            ">;"
        }
    .end annotation
.end field

.field private mSemanticAction:I

.field private mShowsUserInterface:Z

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Lccsanandroid/app/PendingIntent;)V
    .locals 11
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Lccsanandroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon",
            "title",
            "intent"
        }
    .end annotation

    .line 4653
    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    invoke-static {v0, v1, p1}, Lccsanandroidx/core/graphics/drawable/IconCompat;->createWithResource(Lccsanandroid/content/res/Resources;Ljava/lang/String;I)Lccsanandroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    :goto_0
    move-object v2, v0

    new-instance v5, Lccsanandroid/os/Bundle;

    invoke-direct {v5}, Lccsanandroid/os/Bundle;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v10}, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;-><init>(Lccsanandroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Lccsanandroid/app/PendingIntent;Lccsanandroid/os/Bundle;[Lccsanandroidx/core/app/RemoteInput;ZIZZ)V

    .line 4661
    return-void
.end method

.method public constructor <init>(Lccsanandroidx/core/app/NotificationCompat$Action;)V
    .locals 10
    .param p1, "action"    # Lccsanandroidx/core/app/NotificationCompat$Action;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 4669
    invoke-virtual {p1}, Lccsanandroidx/core/app/NotificationCompat$Action;->getIconCompat()Lccsanandroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    iget-object v2, p1, Lccsanandroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    iget-object v3, p1, Lccsanandroidx/core/app/NotificationCompat$Action;->actionIntent:Lccsanandroid/app/PendingIntent;

    new-instance v4, Lccsanandroid/os/Bundle;

    iget-object v0, p1, Lccsanandroidx/core/app/NotificationCompat$Action;->mExtras:Lccsanandroid/os/Bundle;

    invoke-direct {v4, v0}, Lccsanandroid/os/Bundle;-><init>(Lccsanandroid/os/Bundle;)V

    .line 4671
    invoke-virtual {p1}, Lccsanandroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Lccsanandroidx/core/app/RemoteInput;

    move-result-object v5

    invoke-virtual {p1}, Lccsanandroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v6

    .line 4672
    invoke-virtual {p1}, Lccsanandroidx/core/app/NotificationCompat$Action;->getSemanticAction()I

    move-result v7

    iget-boolean v8, p1, Lccsanandroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    .line 4673
    invoke-virtual {p1}, Lccsanandroidx/core/app/NotificationCompat$Action;->isContextual()Z

    move-result v9

    .line 4669
    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;-><init>(Lccsanandroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Lccsanandroid/app/PendingIntent;Lccsanandroid/os/Bundle;[Lccsanandroidx/core/app/RemoteInput;ZIZZ)V

    .line 4674
    return-void
.end method

.method public constructor <init>(Lccsanandroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Lccsanandroid/app/PendingIntent;)V
    .locals 10
    .param p1, "icon"    # Lccsanandroidx/core/graphics/drawable/IconCompat;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Lccsanandroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon",
            "title",
            "intent"
        }
    .end annotation

    .line 4642
    new-instance v4, Lccsanandroid/os/Bundle;

    invoke-direct {v4}, Lccsanandroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v9}, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;-><init>(Lccsanandroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Lccsanandroid/app/PendingIntent;Lccsanandroid/os/Bundle;[Lccsanandroidx/core/app/RemoteInput;ZIZZ)V

    .line 4644
    return-void
.end method

.method private constructor <init>(Lccsanandroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Lccsanandroid/app/PendingIntent;Lccsanandroid/os/Bundle;[Lccsanandroidx/core/app/RemoteInput;ZIZZ)V
    .locals 2
    .param p1, "icon"    # Lccsanandroidx/core/graphics/drawable/IconCompat;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Lccsanandroid/app/PendingIntent;
    .param p4, "extras"    # Lccsanandroid/os/Bundle;
    .param p5, "remoteInputs"    # [Lccsanandroidx/core/app/RemoteInput;
    .param p6, "allowGeneratedReplies"    # Z
    .param p7, "semanticAction"    # I
    .param p8, "showsUserInterface"    # Z
    .param p9, "isContextual"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon",
            "title",
            "intent",
            "extras",
            "remoteInputs",
            "allowGeneratedReplies",
            "semanticAction",
            "showsUserInterface",
            "isContextual"
        }
    .end annotation

    .line 4680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    .line 4590
    iput-boolean v0, p0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->mShowsUserInterface:Z

    .line 4681
    iput-object p1, p0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->mIcon:Lccsanandroidx/core/graphics/drawable/IconCompat;

    .line 4682
    invoke-static {p2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 4683
    iput-object p3, p0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->mIntent:Lccsanandroid/app/PendingIntent;

    .line 4684
    iput-object p4, p0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->mExtras:Lccsanandroid/os/Bundle;

    .line 4685
    if-nez p5, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 4686
    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    .line 4687
    iput-boolean p6, p0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    .line 4688
    iput p7, p0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->mSemanticAction:I

    .line 4689
    iput-boolean p8, p0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->mShowsUserInterface:Z

    .line 4690
    iput-boolean p9, p0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->mIsContextual:Z

    .line 4691
    return-void
.end method

.method private checkContextualActionNullFields()V
    .locals 2

    .line 4797
    iget-boolean v0, p0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->mIsContextual:Z

    if-nez v0, :cond_0

    return-void

    .line 4799
    :cond_0
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->mIntent:Lccsanandroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 4803
    return-void

    .line 4800
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Contextual Actions must contain a valid PendingIntent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromAndroidAction(Lccsanandroid/app/Notification$Action;)Lccsanandroidx/core/app/NotificationCompat$Action$Builder;
    .locals 6
    .param p0, "action"    # Lccsanandroid/app/Notification$Action;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 4603
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lccsanandroid/app/Notification$Action;->getIcon()Lccsanandroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4604
    invoke-virtual {p0}, Lccsanandroid/app/Notification$Action;->getIcon()Lccsanandroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/core/graphics/drawable/IconCompat;->createFromIcon(Lccsanandroid/graphics/drawable/Icon;)Lccsanandroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 4605
    .local v0, "iconCompat":Lccsanandroidx/core/graphics/drawable/IconCompat;
    new-instance v1, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;

    iget-object v2, p0, Lccsanandroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v3, p0, Lccsanandroid/app/Notification$Action;->actionIntent:Lccsanandroid/app/PendingIntent;

    invoke-direct {v1, v0, v2, v3}, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;-><init>(Lccsanandroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Lccsanandroid/app/PendingIntent;)V

    move-object v0, v1

    .line 4607
    .local v0, "builder":Lccsanandroidx/core/app/NotificationCompat$Action$Builder;
    goto :goto_0

    .line 4608
    .end local v0    # "builder":Lccsanandroidx/core/app/NotificationCompat$Action$Builder;
    :cond_0
    new-instance v0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;

    iget v1, p0, Lccsanandroid/app/Notification$Action;->icon:I

    iget-object v2, p0, Lccsanandroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v3, p0, Lccsanandroid/app/Notification$Action;->actionIntent:Lccsanandroid/app/PendingIntent;

    invoke-direct {v0, v1, v2, v3}, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Lccsanandroid/app/PendingIntent;)V

    .line 4611
    .restart local v0    # "builder":Lccsanandroidx/core/app/NotificationCompat$Action$Builder;
    :goto_0
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_1

    .line 4612
    invoke-virtual {p0}, Lccsanandroid/app/Notification$Action;->getRemoteInputs()[Lccsanandroid/app/RemoteInput;

    move-result-object v1

    .line 4613
    .local v1, "remoteInputs":[Lccsanandroid/app/RemoteInput;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-eqz v2, :cond_1

    .line 4614
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 4615
    .local v4, "remoteInput":Lccsanandroid/app/RemoteInput;
    invoke-static {v4}, Lccsanandroidx/core/app/RemoteInput;->fromPlatform(Lccsanandroid/app/RemoteInput;)Lccsanandroidx/core/app/RemoteInput;

    move-result-object v5

    invoke-virtual {v0, v5}, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->addRemoteInput(Lccsanandroidx/core/app/RemoteInput;)Lccsanandroidx/core/app/NotificationCompat$Action$Builder;

    .line 4614
    .end local v4    # "remoteInput":Lccsanandroid/app/RemoteInput;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4619
    .end local v1    # "remoteInputs":[Lccsanandroid/app/RemoteInput;
    :cond_1
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_2

    .line 4620
    invoke-virtual {p0}, Lccsanandroid/app/Notification$Action;->getAllowGeneratedReplies()Z

    move-result v1

    iput-boolean v1, v0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    .line 4622
    :cond_2
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_3

    .line 4623
    invoke-virtual {p0}, Lccsanandroid/app/Notification$Action;->getSemanticAction()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->setSemanticAction(I)Lccsanandroidx/core/app/NotificationCompat$Action$Builder;

    .line 4625
    :cond_3
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_4

    .line 4626
    invoke-virtual {p0}, Lccsanandroid/app/Notification$Action;->isContextual()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->setContextual(Z)Lccsanandroidx/core/app/NotificationCompat$Action$Builder;

    .line 4628
    :cond_4
    return-object v0
.end method


# virtual methods
.method public addExtras(Lccsanandroid/os/Bundle;)Lccsanandroidx/core/app/NotificationCompat$Action$Builder;
    .locals 1
    .param p1, "extras"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extras"
        }
    .end annotation

    .line 4701
    if-eqz p1, :cond_0

    .line 4702
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->mExtras:Lccsanandroid/os/Bundle;

    invoke-virtual {v0, p1}, Lccsanandroid/os/Bundle;->putAll(Lccsanandroid/os/Bundle;)V

    .line 4704
    :cond_0
    return-object p0
.end method

.method public addRemoteInput(Lccsanandroidx/core/app/RemoteInput;)Lccsanandroidx/core/app/NotificationCompat$Action$Builder;
    .locals 1
    .param p1, "remoteInput"    # Lccsanandroidx/core/app/RemoteInput;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remoteInput"
        }
    .end annotation

    .line 4724
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 4725
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    .line 4727
    :cond_0
    if-eqz p1, :cond_1

    .line 4728
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4730
    :cond_1
    return-object p0
.end method

.method public build()Lccsanandroidx/core/app/NotificationCompat$Action;
    .locals 15

    .line 4813
    invoke-direct {p0}, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->checkContextualActionNullFields()V

    .line 4815
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4816
    .local v0, "dataOnlyInputs":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/app/RemoteInput;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4817
    .local v1, "textInputs":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/app/RemoteInput;>;"
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 4818
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/core/app/RemoteInput;

    .line 4819
    .local v3, "input":Lccsanandroidx/core/app/RemoteInput;
    invoke-virtual {v3}, Lccsanandroidx/core/app/RemoteInput;->isDataOnly()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4820
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4822
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4824
    .end local v3    # "input":Lccsanandroidx/core/app/RemoteInput;
    :goto_1
    goto :goto_0

    .line 4826
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 4827
    move-object v10, v3

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lccsanandroidx/core/app/RemoteInput;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lccsanandroidx/core/app/RemoteInput;

    move-object v10, v2

    .line 4828
    .local v10, "dataOnlyInputsArr":[Lccsanandroidx/core/app/RemoteInput;
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4829
    goto :goto_3

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lccsanandroidx/core/app/RemoteInput;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, [Lccsanandroidx/core/app/RemoteInput;

    :goto_3
    move-object v9, v3

    .line 4830
    .local v9, "textInputsArr":[Lccsanandroidx/core/app/RemoteInput;
    new-instance v2, Lccsanandroidx/core/app/NotificationCompat$Action;

    iget-object v5, p0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->mIcon:Lccsanandroidx/core/graphics/drawable/IconCompat;

    iget-object v6, p0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v7, p0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->mIntent:Lccsanandroid/app/PendingIntent;

    iget-object v8, p0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->mExtras:Lccsanandroid/os/Bundle;

    iget-boolean v11, p0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    iget v12, p0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->mSemanticAction:I

    iget-boolean v13, p0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->mShowsUserInterface:Z

    iget-boolean v14, p0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->mIsContextual:Z

    move-object v4, v2

    invoke-direct/range {v4 .. v14}, Lccsanandroidx/core/app/NotificationCompat$Action;-><init>(Lccsanandroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Lccsanandroid/app/PendingIntent;Lccsanandroid/os/Bundle;[Lccsanandroidx/core/app/RemoteInput;[Lccsanandroidx/core/app/RemoteInput;ZIZZ)V

    return-object v2
.end method

.method public extend(Lccsanandroidx/core/app/NotificationCompat$Action$Extender;)Lccsanandroidx/core/app/NotificationCompat$Action$Builder;
    .locals 0
    .param p1, "extender"    # Lccsanandroidx/core/app/NotificationCompat$Action$Extender;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extender"
        }
    .end annotation

    .line 4788
    invoke-interface {p1, p0}, Lccsanandroidx/core/app/NotificationCompat$Action$Extender;->extend(Lccsanandroidx/core/app/NotificationCompat$Action$Builder;)Lccsanandroidx/core/app/NotificationCompat$Action$Builder;

    .line 4789
    return-object p0
.end method

.method public getExtras()Lccsanandroid/os/Bundle;
    .locals 1

    .line 4713
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->mExtras:Lccsanandroid/os/Bundle;

    return-object v0
.end method

.method public setAllowGeneratedReplies(Z)Lccsanandroidx/core/app/NotificationCompat$Action$Builder;
    .locals 0
    .param p1, "allowGeneratedReplies"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowGeneratedReplies"
        }
    .end annotation

    .line 4743
    iput-boolean p1, p0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    .line 4744
    return-object p0
.end method

.method public setContextual(Z)Lccsanandroidx/core/app/NotificationCompat$Action$Builder;
    .locals 0
    .param p1, "isContextual"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isContextual"
        }
    .end annotation

    .line 4766
    iput-boolean p1, p0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->mIsContextual:Z

    .line 4767
    return-object p0
.end method

.method public setSemanticAction(I)Lccsanandroidx/core/app/NotificationCompat$Action$Builder;
    .locals 0
    .param p1, "semanticAction"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "semanticAction"
        }
    .end annotation

    .line 4756
    iput p1, p0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->mSemanticAction:I

    .line 4757
    return-object p0
.end method

.method public setShowsUserInterface(Z)Lccsanandroidx/core/app/NotificationCompat$Action$Builder;
    .locals 0
    .param p1, "showsUserInterface"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showsUserInterface"
        }
    .end annotation

    .line 4779
    iput-boolean p1, p0, Lccsanandroidx/core/app/NotificationCompat$Action$Builder;->mShowsUserInterface:Z

    .line 4780
    return-object p0
.end method
