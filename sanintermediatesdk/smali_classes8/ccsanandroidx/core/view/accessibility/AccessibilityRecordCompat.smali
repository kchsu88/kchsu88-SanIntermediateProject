.class public Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompat.java"


# instance fields
.field private final mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "record"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "record"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object v0, p1

    check-cast v0, Lccsanandroid/view/accessibility/AccessibilityRecord;

    iput-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    .line 45
    return-void
.end method

.method public static getMaxScrollX(Lccsanandroid/view/accessibility/AccessibilityRecord;)I
    .locals 2
    .param p0, "record"    # Lccsanandroid/view/accessibility/AccessibilityRecord;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "record"
        }
    .end annotation

    .line 482
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 483
    invoke-virtual {p0}, Lccsanandroid/view/accessibility/AccessibilityRecord;->getMaxScrollX()I

    move-result v0

    return v0

    .line 485
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getMaxScrollY(Lccsanandroid/view/accessibility/AccessibilityRecord;)I
    .locals 2
    .param p0, "record"    # Lccsanandroid/view/accessibility/AccessibilityRecord;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "record"
        }
    .end annotation

    .line 532
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 533
    invoke-virtual {p0}, Lccsanandroid/view/accessibility/AccessibilityRecord;->getMaxScrollY()I

    move-result v0

    return v0

    .line 535
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static obtain()Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    new-instance v0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;

    invoke-static {}, Lccsanandroid/view/accessibility/AccessibilityRecord;->obtain()Lccsanandroid/view/accessibility/AccessibilityRecord;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static obtain(Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;)Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;
    .locals 2
    .param p0, "record"    # Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "record"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    new-instance v0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;

    iget-object v1, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-static {v1}, Lccsanandroid/view/accessibility/AccessibilityRecord;->obtain(Lccsanandroid/view/accessibility/AccessibilityRecord;)Lccsanandroid/view/accessibility/AccessibilityRecord;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static setMaxScrollX(Lccsanandroid/view/accessibility/AccessibilityRecord;I)V
    .locals 2
    .param p0, "record"    # Lccsanandroid/view/accessibility/AccessibilityRecord;
    .param p1, "maxScrollX"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "record",
            "maxScrollX"
        }
    .end annotation

    .line 508
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 509
    invoke-virtual {p0, p1}, Lccsanandroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    .line 511
    :cond_0
    return-void
.end method

.method public static setMaxScrollY(Lccsanandroid/view/accessibility/AccessibilityRecord;I)V
    .locals 2
    .param p0, "record"    # Lccsanandroid/view/accessibility/AccessibilityRecord;
    .param p1, "maxScrollY"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "record",
            "maxScrollY"
        }
    .end annotation

    .line 558
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 559
    invoke-virtual {p0, p1}, Lccsanandroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    .line 561
    :cond_0
    return-void
.end method

.method public static setSource(Lccsanandroid/view/accessibility/AccessibilityRecord;Lccsanandroid/view/View;I)V
    .locals 2
    .param p0, "record"    # Lccsanandroid/view/accessibility/AccessibilityRecord;
    .param p1, "root"    # Lccsanandroid/view/View;
    .param p2, "virtualDescendantId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "record",
            "root",
            "virtualDescendantId"
        }
    .end annotation

    .line 139
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 140
    invoke-virtual {p0, p1, p2}, Lccsanandroid/view/accessibility/AccessibilityRecord;->setSource(Lccsanandroid/view/View;I)V

    .line 142
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 763
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 764
    return v0

    .line 766
    :cond_0
    instance-of v1, p1, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 767
    return v2

    .line 769
    :cond_1
    move-object v1, p1

    check-cast v1, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;

    .line 770
    .local v1, "other":Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;
    iget-object v3, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    if-nez v3, :cond_2

    .line 771
    iget-object v3, v1, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    if-eqz v3, :cond_3

    .line 772
    return v2

    .line 774
    :cond_2
    iget-object v4, v1, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 775
    return v2

    .line 777
    :cond_3
    return v0
.end method

.method public getAddedCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 572
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Lccsanandroid/view/accessibility/AccessibilityRecord;->getAddedCount()I

    move-result v0

    return v0
.end method

.method public getBeforeText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 663
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Lccsanandroid/view/accessibility/AccessibilityRecord;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 624
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Lccsanandroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 689
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Lccsanandroid/view/accessibility/AccessibilityRecord;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentItemIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 340
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Lccsanandroid/view/accessibility/AccessibilityRecord;->getCurrentItemIndex()I

    move-result v0

    return v0
.end method

.method public getFromIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 369
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Lccsanandroid/view/accessibility/AccessibilityRecord;->getFromIndex()I

    move-result v0

    return v0
.end method

.method public getImpl()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 314
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Lccsanandroid/view/accessibility/AccessibilityRecord;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getMaxScrollX()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 472
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-static {v0}, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->getMaxScrollX(Lccsanandroid/view/accessibility/AccessibilityRecord;)I

    move-result v0

    return v0
.end method

.method public getMaxScrollY()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 522
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-static {v0}, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->getMaxScrollY(Lccsanandroid/view/accessibility/AccessibilityRecord;)I

    move-result v0

    return v0
.end method

.method public getParcelableData()Lccsanandroid/os/Parcelable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 715
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Lccsanandroid/view/accessibility/AccessibilityRecord;->getParcelableData()Lccsanandroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public getRemovedCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 598
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Lccsanandroid/view/accessibility/AccessibilityRecord;->getRemovedCount()I

    move-result v0

    return v0
.end method

.method public getScrollX()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 424
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Lccsanandroid/view/accessibility/AccessibilityRecord;->getScrollX()I

    move-result v0

    return v0
.end method

.method public getScrollY()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 448
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Lccsanandroid/view/accessibility/AccessibilityRecord;->getScrollY()I

    move-result v0

    return v0
.end method

.method public getSource()Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 160
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Lccsanandroid/view/accessibility/AccessibilityRecord;->getSource()Lccsanandroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 651
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Lccsanandroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getToIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 399
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Lccsanandroid/view/accessibility/AccessibilityRecord;->getToIndex()I

    move-result v0

    return v0
.end method

.method public getWindowId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 172
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Lccsanandroid/view/accessibility/AccessibilityRecord;->getWindowId()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 754
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 184
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Lccsanandroid/view/accessibility/AccessibilityRecord;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 210
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Lccsanandroid/view/accessibility/AccessibilityRecord;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isFullScreen()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 262
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Lccsanandroid/view/accessibility/AccessibilityRecord;->isFullScreen()Z

    move-result v0

    return v0
.end method

.method public isPassword()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 236
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Lccsanandroid/view/accessibility/AccessibilityRecord;->isPassword()Z

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 288
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Lccsanandroid/view/accessibility/AccessibilityRecord;->isScrollable()Z

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 745
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Lccsanandroid/view/accessibility/AccessibilityRecord;->recycle()V

    .line 746
    return-void
.end method

.method public setAddedCount(I)V
    .locals 1
    .param p1, "addedCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addedCount"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 586
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Lccsanandroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    .line 587
    return-void
.end method

.method public setBeforeText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "beforeText"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "beforeText"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 677
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Lccsanandroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 678
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isChecked"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 198
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Lccsanandroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    .line 199
    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 638
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Lccsanandroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 639
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentDescription"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 703
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Lccsanandroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 704
    return-void
.end method

.method public setCurrentItemIndex(I)V
    .locals 1
    .param p1, "currentItemIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentItemIndex"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 354
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Lccsanandroid/view/accessibility/AccessibilityRecord;->setCurrentItemIndex(I)V

    .line 355
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEnabled"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Lccsanandroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 225
    return-void
.end method

.method public setFromIndex(I)V
    .locals 1
    .param p1, "fromIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromIndex"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 386
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Lccsanandroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 387
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 1
    .param p1, "isFullScreen"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFullScreen"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 276
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Lccsanandroid/view/accessibility/AccessibilityRecord;->setFullScreen(Z)V

    .line 277
    return-void
.end method

.method public setItemCount(I)V
    .locals 1
    .param p1, "itemCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemCount"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 328
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Lccsanandroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 329
    return-void
.end method

.method public setMaxScrollX(I)V
    .locals 1
    .param p1, "maxScrollX"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxScrollX"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 498
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-static {v0, p1}, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->setMaxScrollX(Lccsanandroid/view/accessibility/AccessibilityRecord;I)V

    .line 499
    return-void
.end method

.method public setMaxScrollY(I)V
    .locals 1
    .param p1, "maxScrollY"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxScrollY"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 548
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-static {v0, p1}, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->setMaxScrollY(Lccsanandroid/view/accessibility/AccessibilityRecord;I)V

    .line 549
    return-void
.end method

.method public setParcelableData(Lccsanandroid/os/Parcelable;)V
    .locals 1
    .param p1, "parcelableData"    # Lccsanandroid/os/Parcelable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parcelableData"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 729
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Lccsanandroid/view/accessibility/AccessibilityRecord;->setParcelableData(Lccsanandroid/os/Parcelable;)V

    .line 730
    return-void
.end method

.method public setPassword(Z)V
    .locals 1
    .param p1, "isPassword"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPassword"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 250
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Lccsanandroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    .line 251
    return-void
.end method

.method public setRemovedCount(I)V
    .locals 1
    .param p1, "removedCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "removedCount"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 612
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Lccsanandroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    .line 613
    return-void
.end method

.method public setScrollX(I)V
    .locals 1
    .param p1, "scrollX"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollX"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 436
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Lccsanandroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    .line 437
    return-void
.end method

.method public setScrollY(I)V
    .locals 1
    .param p1, "scrollY"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollY"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 460
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Lccsanandroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    .line 461
    return-void
.end method

.method public setScrollable(Z)V
    .locals 1
    .param p1, "scrollable"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollable"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 302
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Lccsanandroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 303
    return-void
.end method

.method public setSource(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "source"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 98
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Lccsanandroid/view/accessibility/AccessibilityRecord;->setSource(Lccsanandroid/view/View;)V

    .line 99
    return-void
.end method

.method public setSource(Lccsanandroid/view/View;I)V
    .locals 1
    .param p1, "root"    # Lccsanandroid/view/View;
    .param p2, "virtualDescendantId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "root",
            "virtualDescendantId"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-static {v0, p1, p2}, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->setSource(Lccsanandroid/view/accessibility/AccessibilityRecord;Lccsanandroid/view/View;I)V

    .line 120
    return-void
.end method

.method public setToIndex(I)V
    .locals 1
    .param p1, "toIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toIndex"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 412
    iget-object v0, p0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Lccsanandroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 413
    return-void
.end method
