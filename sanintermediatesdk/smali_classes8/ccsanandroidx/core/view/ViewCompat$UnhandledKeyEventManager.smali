.class Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnhandledKeyEventManager"
.end annotation


# static fields
.field private static final sViewsWithListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCapturedKeys:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mViewsContainingListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lccsanandroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 4548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4556
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    .line 4561
    iput-object v0, p0, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mCapturedKeys:Lccsanandroid/util/SparseArray;

    .line 4567
    iput-object v0, p0, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static at(Lccsanandroid/view/View;)Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;
    .locals 2
    .param p0, "root"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "root"
        }
    .end annotation

    .line 4577
    sget v0, Lccsanandroidx/core/R$id;->tag_unhandled_key_event_manager:I

    .line 4578
    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;

    .line 4579
    .local v0, "manager":Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;
    if-nez v0, :cond_0

    .line 4580
    new-instance v1, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;

    invoke-direct {v1}, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;-><init>()V

    move-object v0, v1

    .line 4581
    sget v1, Lccsanandroidx/core/R$id;->tag_unhandled_key_event_manager:I

    invoke-virtual {p0, v1, v0}, Lccsanandroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 4583
    :cond_0
    return-object v0
.end method

.method private dispatchInOrder(Lccsanandroid/view/View;Lccsanandroid/view/KeyEvent;)Lccsanandroid/view/View;
    .locals 5
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "event"    # Lccsanandroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "event"
        }
    .end annotation

    .line 4606
    iget-object v0, p0, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4609
    :cond_0
    instance-of v0, p1, Lccsanandroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 4610
    move-object v0, p1

    check-cast v0, Lccsanandroid/view/ViewGroup;

    .line 4612
    .local v0, "vg":Lccsanandroid/view/ViewGroup;
    invoke-virtual {v0}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 4613
    invoke-virtual {v0, v2}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v3

    .line 4614
    .local v3, "v":Lccsanandroid/view/View;
    invoke-direct {p0, v3, p2}, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->dispatchInOrder(Lccsanandroid/view/View;Lccsanandroid/view/KeyEvent;)Lccsanandroid/view/View;

    move-result-object v4

    .line 4615
    .local v4, "consumer":Lccsanandroid/view/View;
    if-eqz v4, :cond_1

    .line 4616
    return-object v4

    .line 4612
    .end local v3    # "v":Lccsanandroid/view/View;
    .end local v4    # "consumer":Lccsanandroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4620
    .end local v0    # "vg":Lccsanandroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_2
    invoke-direct {p0, p1, p2}, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->onUnhandledKeyEvent(Lccsanandroid/view/View;Lccsanandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4621
    return-object p1

    .line 4623
    :cond_3
    return-object v1

    .line 4607
    :cond_4
    :goto_1
    return-object v1
.end method

.method private getCapturedKeys()Lccsanandroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsanandroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/view/View;",
            ">;>;"
        }
    .end annotation

    .line 4570
    iget-object v0, p0, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mCapturedKeys:Lccsanandroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 4571
    new-instance v0, Lccsanandroid/util/SparseArray;

    invoke-direct {v0}, Lccsanandroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mCapturedKeys:Lccsanandroid/util/SparseArray;

    .line 4573
    :cond_0
    iget-object v0, p0, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mCapturedKeys:Lccsanandroid/util/SparseArray;

    return-object v0
.end method

.method private onUnhandledKeyEvent(Lccsanandroid/view/View;Lccsanandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Lccsanandroid/view/View;
    .param p2, "event"    # Lccsanandroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    .line 4665
    sget v0, Lccsanandroidx/core/R$id;->tag_unhandled_key_listeners:I

    .line 4667
    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4668
    .local v0, "viewListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;>;"
    if-eqz v0, :cond_1

    .line 4669
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 4670
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;

    invoke-interface {v3, p1, p2}, Lccsanandroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;->onUnhandledKeyEvent(Lccsanandroid/view/View;Lccsanandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4671
    return v2

    .line 4669
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4675
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private recalcViewsWithUnhandled()V
    .locals 8

    .line 4705
    iget-object v0, p0, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_0

    .line 4706
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 4708
    :cond_0
    sget-object v0, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4709
    return-void

    .line 4711
    :cond_1
    monitor-enter v0

    .line 4712
    :try_start_0
    iget-object v1, p0, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    if-nez v1, :cond_2

    .line 4713
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    .line 4715
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_5

    .line 4716
    sget-object v2, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 4717
    .local v3, "vw":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lccsanandroid/view/View;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/view/View;

    .line 4718
    .local v4, "v":Lccsanandroid/view/View;
    if-nez v4, :cond_3

    .line 4719
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 4721
    :cond_3
    iget-object v2, p0, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v4, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4722
    invoke-virtual {v4}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v2

    .line 4723
    .local v2, "nxt":Lccsanandroid/view/ViewParent;
    :goto_1
    instance-of v5, v2, Lccsanandroid/view/View;

    if-eqz v5, :cond_4

    .line 4724
    iget-object v5, p0, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    move-object v6, v2

    check-cast v6, Lccsanandroid/view/View;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4725
    invoke-interface {v2}, Lccsanandroid/view/ViewParent;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v5

    move-object v2, v5

    goto :goto_1

    .line 4715
    .end local v2    # "nxt":Lccsanandroid/view/ViewParent;
    .end local v3    # "vw":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lccsanandroid/view/View;>;"
    .end local v4    # "v":Lccsanandroid/view/View;
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4729
    .end local v1    # "i":I
    :cond_5
    monitor-exit v0

    .line 4730
    return-void

    .line 4729
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method static registerListeningView(Lccsanandroid/view/View;)V
    .locals 4
    .param p0, "v"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 4683
    sget-object v0, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4684
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 4685
    .local v2, "wv":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lccsanandroid/view/View;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 4686
    monitor-exit v0

    return-void

    .line 4688
    .end local v2    # "wv":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lccsanandroid/view/View;>;"
    :cond_0
    goto :goto_0

    .line 4689
    :cond_1
    sget-object v1, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4690
    monitor-exit v0

    .line 4691
    return-void

    .line 4690
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method static unregisterListeningView(Lccsanandroid/view/View;)V
    .locals 4
    .param p0, "v"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 4694
    sget-object v0, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4695
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    sget-object v2, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 4696
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 4697
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4698
    monitor-exit v0

    return-void

    .line 4695
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4701
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 4702
    return-void

    .line 4701
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method dispatch(Lccsanandroid/view/View;Lccsanandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "root"    # Lccsanandroid/view/View;
    .param p2, "event"    # Lccsanandroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "root",
            "event"
        }
    .end annotation

    .line 4587
    invoke-virtual {p2}, Lccsanandroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 4588
    invoke-direct {p0}, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->recalcViewsWithUnhandled()V

    .line 4591
    :cond_0
    invoke-direct {p0, p1, p2}, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->dispatchInOrder(Lccsanandroid/view/View;Lccsanandroid/view/KeyEvent;)Lccsanandroid/view/View;

    move-result-object v0

    .line 4595
    .local v0, "consumer":Lccsanandroid/view/View;
    invoke-virtual {p2}, Lccsanandroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 4596
    invoke-virtual {p2}, Lccsanandroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 4597
    .local v1, "keycode":I
    if-eqz v0, :cond_1

    invoke-static {v1}, Lccsanandroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4598
    invoke-direct {p0}, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->getCapturedKeys()Lccsanandroid/util/SparseArray;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v3}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4601
    .end local v1    # "keycode":I
    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method preDispatch(Lccsanandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Lccsanandroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 4632
    iget-object v0, p0, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4633
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 4634
    return v1

    .line 4636
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;

    .line 4640
    const/4 v0, 0x0

    .line 4641
    .local v0, "currentReceiver":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lccsanandroid/view/View;>;"
    invoke-direct {p0}, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->getCapturedKeys()Lccsanandroid/util/SparseArray;

    move-result-object v2

    .line 4642
    .local v2, "capturedKeys":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Ljava/lang/ref/WeakReference<Lccsanandroid/view/View;>;>;"
    invoke-virtual {p1}, Lccsanandroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 4643
    invoke-virtual {p1}, Lccsanandroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lccsanandroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    .line 4644
    .local v3, "idx":I
    if-ltz v3, :cond_1

    .line 4645
    invoke-virtual {v2, v3}, Lccsanandroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 4646
    invoke-virtual {v2, v3}, Lccsanandroid/util/SparseArray;->removeAt(I)V

    .line 4649
    .end local v3    # "idx":I
    :cond_1
    if-nez v0, :cond_2

    .line 4650
    invoke-virtual {p1}, Lccsanandroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 4652
    :cond_2
    if-eqz v0, :cond_4

    .line 4653
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/View;

    .line 4654
    .local v1, "target":Lccsanandroid/view/View;
    if-eqz v1, :cond_3

    invoke-static {v1}, Lccsanandroidx/core/view/ViewCompat;->isAttachedToWindow(Lccsanandroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4655
    invoke-direct {p0, v1, p1}, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->onUnhandledKeyEvent(Lccsanandroid/view/View;Lccsanandroid/view/KeyEvent;)Z

    .line 4658
    :cond_3
    return v4

    .line 4660
    .end local v1    # "target":Lccsanandroid/view/View;
    :cond_4
    return v1
.end method
