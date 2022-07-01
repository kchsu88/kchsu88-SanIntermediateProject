.class public final Lccsanandroidx/core/view/accessibility/AccessibilityEventCompat;
.super Ljava/lang/Object;
.source "AccessibilityEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/view/accessibility/AccessibilityEventCompat$ContentChangeType;
    }
.end annotation


# static fields
.field public static final CONTENT_CHANGE_TYPE_CONTENT_DESCRIPTION:I = 0x4

.field public static final CONTENT_CHANGE_TYPE_PANE_APPEARED:I = 0x10

.field public static final CONTENT_CHANGE_TYPE_PANE_DISAPPEARED:I = 0x20

.field public static final CONTENT_CHANGE_TYPE_PANE_TITLE:I = 0x8

.field public static final CONTENT_CHANGE_TYPE_STATE_DESCRIPTION:I = 0x40

.field public static final CONTENT_CHANGE_TYPE_SUBTREE:I = 0x1

.field public static final CONTENT_CHANGE_TYPE_TEXT:I = 0x2

.field public static final CONTENT_CHANGE_TYPE_UNDEFINED:I = 0x0

.field public static final TYPES_ALL_MASK:I = -0x1

.field public static final TYPE_ANNOUNCEMENT:I = 0x4000

.field public static final TYPE_ASSIST_READING_CONTEXT:I = 0x1000000

.field public static final TYPE_GESTURE_DETECTION_END:I = 0x80000

.field public static final TYPE_GESTURE_DETECTION_START:I = 0x40000

.field public static final TYPE_TOUCH_EXPLORATION_GESTURE_END:I = 0x400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_TOUCH_EXPLORATION_GESTURE_START:I = 0x200
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_TOUCH_INTERACTION_END:I = 0x200000

.field public static final TYPE_TOUCH_INTERACTION_START:I = 0x100000

.field public static final TYPE_VIEW_ACCESSIBILITY_FOCUSED:I = 0x8000

.field public static final TYPE_VIEW_ACCESSIBILITY_FOCUS_CLEARED:I = 0x10000

.field public static final TYPE_VIEW_CONTEXT_CLICKED:I = 0x800000

.field public static final TYPE_VIEW_HOVER_ENTER:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_VIEW_HOVER_EXIT:I = 0x100
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_VIEW_SCROLLED:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_VIEW_TEXT_SELECTION_CHANGED:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_VIEW_TEXT_TRAVERSED_AT_MOVEMENT_GRANULARITY:I = 0x20000

.field public static final TYPE_WINDOWS_CHANGED:I = 0x400000

.field public static final TYPE_WINDOW_CONTENT_CHANGED:I = 0x800
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    return-void
.end method

.method public static appendRecord(Lccsanandroid/view/accessibility/AccessibilityEvent;Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;)V
    .locals 1
    .param p0, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;
    .param p1, "record"    # Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "record"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 274
    invoke-virtual {p1}, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->getImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, v0}, Lccsanandroid/view/accessibility/AccessibilityEvent;->appendRecord(Lccsanandroid/view/accessibility/AccessibilityRecord;)V

    .line 275
    return-void
.end method

.method public static asRecord(Lccsanandroid/view/accessibility/AccessibilityEvent;)Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;
    .locals 1
    .param p0, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 309
    new-instance v0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;

    invoke-direct {v0, p0}, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getAction(Lccsanandroid/view/accessibility/AccessibilityEvent;)I
    .locals 2
    .param p0, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 405
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 406
    invoke-virtual {p0}, Lccsanandroid/view/accessibility/AccessibilityEvent;->getAction()I

    move-result v0

    return v0

    .line 408
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getContentChangeTypes(Lccsanandroid/view/accessibility/AccessibilityEvent;)I
    .locals 2
    .param p0, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 343
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 344
    invoke-virtual {p0}, Lccsanandroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v0

    return v0

    .line 346
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getMovementGranularity(Lccsanandroid/view/accessibility/AccessibilityEvent;)I
    .locals 2
    .param p0, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 369
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 370
    invoke-virtual {p0}, Lccsanandroid/view/accessibility/AccessibilityEvent;->getMovementGranularity()I

    move-result v0

    return v0

    .line 372
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getRecord(Lccsanandroid/view/accessibility/AccessibilityEvent;I)Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;
    .locals 2
    .param p0, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "index"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 288
    new-instance v0, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;

    invoke-virtual {p0, p1}, Lccsanandroid/view/accessibility/AccessibilityEvent;->getRecord(I)Lccsanandroid/view/accessibility/AccessibilityRecord;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getRecordCount(Lccsanandroid/view/accessibility/AccessibilityEvent;)I
    .locals 1
    .param p0, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 258
    invoke-virtual {p0}, Lccsanandroid/view/accessibility/AccessibilityEvent;->getRecordCount()I

    move-result v0

    return v0
.end method

.method public static setAction(Lccsanandroid/view/accessibility/AccessibilityEvent;I)V
    .locals 2
    .param p0, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;
    .param p1, "action"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "action"
        }
    .end annotation

    .line 394
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 395
    invoke-virtual {p0, p1}, Lccsanandroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    .line 397
    :cond_0
    return-void
.end method

.method public static setContentChangeTypes(Lccsanandroid/view/accessibility/AccessibilityEvent;I)V
    .locals 2
    .param p0, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;
    .param p1, "changeTypes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "changeTypes"
        }
    .end annotation

    .line 322
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 323
    invoke-virtual {p0, p1}, Lccsanandroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 325
    :cond_0
    return-void
.end method

.method public static setMovementGranularity(Lccsanandroid/view/accessibility/AccessibilityEvent;I)V
    .locals 2
    .param p0, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;
    .param p1, "granularity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "granularity"
        }
    .end annotation

    .line 358
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 359
    invoke-virtual {p0, p1}, Lccsanandroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    .line 361
    :cond_0
    return-void
.end method
