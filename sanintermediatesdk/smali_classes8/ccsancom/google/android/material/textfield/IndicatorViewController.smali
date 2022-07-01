.class final Lccsancom/google/android/material/textfield/IndicatorViewController;
.super Ljava/lang/Object;
.source "IndicatorViewController.java"


# static fields
.field private static final CAPTION_OPACITY_FADE_ANIMATION_DURATION:I = 0xa7

.field private static final CAPTION_STATE_ERROR:I = 0x1

.field private static final CAPTION_STATE_HELPER_TEXT:I = 0x2

.field private static final CAPTION_STATE_NONE:I = 0x0

.field private static final CAPTION_TRANSLATE_Y_ANIMATION_DURATION:I = 0xd9

.field static final COUNTER_INDEX:I = 0x2

.field static final ERROR_INDEX:I = 0x0

.field static final HELPER_INDEX:I = 0x1


# instance fields
.field private captionAnimator:Lccsanandroid/animation/Animator;

.field private captionArea:Lccsanandroid/widget/FrameLayout;

.field private captionDisplayed:I

.field private captionToShow:I

.field private final captionTranslationYPx:F

.field private final context:Lccsanandroid/content/Context;

.field private errorEnabled:Z

.field private errorText:Ljava/lang/CharSequence;

.field private errorTextAppearance:I

.field private errorView:Lccsanandroid/widget/TextView;

.field private errorViewContentDescription:Ljava/lang/CharSequence;

.field private errorViewTextColor:Lccsanandroid/content/res/ColorStateList;

.field private helperText:Ljava/lang/CharSequence;

.field private helperTextEnabled:Z

.field private helperTextTextAppearance:I

.field private helperTextView:Lccsanandroid/widget/TextView;

.field private helperTextViewTextColor:Lccsanandroid/content/res/ColorStateList;

.field private indicatorArea:Lccsanandroid/widget/LinearLayout;

.field private indicatorsAdded:I

.field private final textInputView:Lccsancom/google/android/material/textfield/TextInputLayout;

.field private typeface:Lccsanandroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lccsancom/google/android/material/textfield/TextInputLayout;)V
    .locals 2
    .param p1, "textInputView"    # Lccsancom/google/android/material/textfield/TextInputLayout;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-virtual {p1}, Lccsancom/google/android/material/textfield/TextInputLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->context:Lccsanandroid/content/Context;

    .line 123
    iput-object p1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->textInputView:Lccsancom/google/android/material/textfield/TextInputLayout;

    .line 124
    nop

    .line 125
    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccsancom/google/android/material/R$dimen;->design_textinput_caption_translate_y:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionTranslationYPx:F

    .line 126
    return-void
.end method

.method static synthetic access$002(Lccsancom/google/android/material/textfield/IndicatorViewController;I)I
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/textfield/IndicatorViewController;
    .param p1, "x1"    # I

    .line 62
    iput p1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    return p1
.end method

.method static synthetic access$102(Lccsancom/google/android/material/textfield/IndicatorViewController;Lccsanandroid/animation/Animator;)Lccsanandroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/textfield/IndicatorViewController;
    .param p1, "x1"    # Lccsanandroid/animation/Animator;

    .line 62
    iput-object p1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionAnimator:Lccsanandroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$200(Lccsancom/google/android/material/textfield/IndicatorViewController;)Lccsanandroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/textfield/IndicatorViewController;

    .line 62
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorView:Lccsanandroid/widget/TextView;

    return-object v0
.end method

.method private canAdjustIndicatorPadding()Z
    .locals 1

    .line 380
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Lccsanandroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->textInputView:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lccsancom/google/android/material/textfield/TextInputLayout;->getEditText()Lccsanandroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private createCaptionAnimators(Ljava/util/List;ZLccsanandroid/widget/TextView;III)V
    .locals 1
    .param p2, "captionEnabled"    # Z
    .param p3, "captionView"    # Lccsanandroid/widget/TextView;
    .param p4, "captionState"    # I
    .param p5, "captionToHide"    # I
    .param p6, "captionToShow"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/animation/Animator;",
            ">;Z",
            "Lccsanandroid/widget/TextView;",
            "III)V"
        }
    .end annotation

    .line 303
    .local p1, "captionAnimatorList":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator;>;"
    if-eqz p3, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 307
    :cond_0
    if-eq p4, p6, :cond_1

    if-ne p4, p5, :cond_3

    .line 308
    :cond_1
    if-ne p6, p4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 309
    :goto_0
    invoke-direct {p0, p3, v0}, Lccsancom/google/android/material/textfield/IndicatorViewController;->createCaptionOpacityAnimator(Lccsanandroid/widget/TextView;Z)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v0

    .line 308
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    if-ne p6, p4, :cond_3

    .line 311
    invoke-direct {p0, p3}, Lccsancom/google/android/material/textfield/IndicatorViewController;->createCaptionTranslationYAnimator(Lccsanandroid/widget/TextView;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_3
    return-void

    .line 304
    :cond_4
    :goto_1
    return-void
.end method

.method private createCaptionOpacityAnimator(Lccsanandroid/widget/TextView;Z)Lccsanandroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "captionView"    # Lccsanandroid/widget/TextView;
    .param p2, "display"    # Z

    .line 317
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 318
    .local v0, "endValue":F
    :goto_0
    sget-object v1, Lccsanandroid/view/View;->ALPHA:Lccsanandroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p1, v1, v2}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Lccsanandroid/util/Property;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v1

    .line 319
    .local v1, "opacityAnimator":Lccsanandroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xa7

    invoke-virtual {v1, v2, v3}, Lccsanandroid/animation/ObjectAnimator;->setDuration(J)Lccsanandroid/animation/ObjectAnimator;

    .line 320
    sget-object v2, Lccsancom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Lccsanandroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Lccsanandroid/animation/ObjectAnimator;->setInterpolator(Lccsanandroid/animation/TimeInterpolator;)V

    .line 321
    return-object v1
.end method

.method private createCaptionTranslationYAnimator(Lccsanandroid/widget/TextView;)Lccsanandroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "captionView"    # Lccsanandroid/widget/TextView;

    .line 325
    sget-object v0, Lccsanandroid/view/View;->TRANSLATION_Y:Lccsanandroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionTranslationYPx:F

    neg-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 326
    invoke-static {p1, v0, v1}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Lccsanandroid/util/Property;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v0

    .line 327
    .local v0, "translationYAnimator":Lccsanandroid/animation/ObjectAnimator;
    const-wide/16 v1, 0xd9

    invoke-virtual {v0, v1, v2}, Lccsanandroid/animation/ObjectAnimator;->setDuration(J)Lccsanandroid/animation/ObjectAnimator;

    .line 328
    sget-object v1, Lccsancom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Lccsanandroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Lccsanandroid/animation/ObjectAnimator;->setInterpolator(Lccsanandroid/animation/TimeInterpolator;)V

    .line 329
    return-object v0
.end method

.method private getCaptionViewFromDisplayState(I)Lccsanandroid/widget/TextView;
    .locals 1
    .param p1, "captionDisplayState"    # I

    .line 344
    packed-switch p1, :pswitch_data_0

    .line 352
    const/4 v0, 0x0

    return-object v0

    .line 348
    :pswitch_0
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->helperTextView:Lccsanandroid/widget/TextView;

    return-object v0

    .line 346
    :pswitch_1
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorView:Lccsanandroid/widget/TextView;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getIndicatorPadding(ZII)I
    .locals 1
    .param p1, "isFontScaleLarge"    # Z
    .param p2, "largeFontPaddingRes"    # I
    .param p3, "defaultPadding"    # I

    .line 385
    if-eqz p1, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->context:Lccsanandroid/content/Context;

    .line 386
    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p3

    .line 385
    :goto_0
    return v0
.end method

.method private isCaptionStateError(I)Z
    .locals 2
    .param p1, "captionState"    # I

    .line 523
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorView:Lccsanandroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorText:Ljava/lang/CharSequence;

    .line 525
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 523
    :goto_0
    return v0
.end method

.method private isCaptionStateHelperText(I)Z
    .locals 1
    .param p1, "captionState"    # I

    .line 537
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->helperTextView:Lccsanandroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->helperText:Ljava/lang/CharSequence;

    .line 539
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 537
    :goto_0
    return v0
.end method

.method private setCaptionViewVisibilities(II)V
    .locals 2
    .param p1, "captionToHide"    # I
    .param p2, "captionToShow"    # I

    .line 270
    if-ne p1, p2, :cond_0

    .line 271
    return-void

    .line 274
    :cond_0
    if-eqz p2, :cond_1

    .line 275
    invoke-direct {p0, p2}, Lccsancom/google/android/material/textfield/IndicatorViewController;->getCaptionViewFromDisplayState(I)Lccsanandroid/widget/TextView;

    move-result-object v0

    .line 276
    .local v0, "captionViewToShow":Lccsanandroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 277
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 278
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setAlpha(F)V

    .line 282
    .end local v0    # "captionViewToShow":Lccsanandroid/widget/TextView;
    :cond_1
    if-eqz p1, :cond_2

    .line 283
    invoke-direct {p0, p1}, Lccsancom/google/android/material/textfield/IndicatorViewController;->getCaptionViewFromDisplayState(I)Lccsanandroid/widget/TextView;

    move-result-object v0

    .line 284
    .local v0, "captionViewDisplayed":Lccsanandroid/widget/TextView;
    if-eqz v0, :cond_2

    .line 285
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 287
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 288
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    .end local v0    # "captionViewDisplayed":Lccsanandroid/widget/TextView;
    :cond_2
    iput p2, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    .line 293
    return-void
.end method

.method private setTextViewTypeface(Lccsanandroid/widget/TextView;Lccsanandroid/graphics/Typeface;)V
    .locals 0
    .param p1, "captionView"    # Lccsanandroid/widget/TextView;
    .param p2, "typeface"    # Lccsanandroid/graphics/Typeface;

    .line 561
    if-eqz p1, :cond_0

    .line 562
    invoke-virtual {p1, p2}, Lccsanandroid/widget/TextView;->setTypeface(Lccsanandroid/graphics/Typeface;)V

    .line 564
    :cond_0
    return-void
.end method

.method private setViewGroupGoneIfEmpty(Lccsanandroid/view/ViewGroup;I)V
    .locals 1
    .param p1, "viewGroup"    # Lccsanandroid/view/ViewGroup;
    .param p2, "indicatorsAdded"    # I

    .line 433
    if-nez p2, :cond_0

    .line 434
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lccsanandroid/view/ViewGroup;->setVisibility(I)V

    .line 436
    :cond_0
    return-void
.end method

.method private shouldAnimateCaptionView(Lccsanandroid/widget/TextView;Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "captionView"    # Lccsanandroid/widget/TextView;
    .param p2, "captionText"    # Ljava/lang/CharSequence;

    .line 192
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->textInputView:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0}, Lccsanandroidx/core/view/ViewCompat;->isLaidOut(Lccsanandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->textInputView:Lccsancom/google/android/material/textfield/TextInputLayout;

    .line 193
    invoke-virtual {v0}, Lccsancom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    iget v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p1}, Lccsanandroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p2}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 192
    :goto_0
    return v0
.end method

.method private updateCaptionViewsVisibility(IIZ)V
    .locals 15
    .param p1, "captionToHide"    # I
    .param p2, "captionToShow"    # I
    .param p3, "animate"    # Z

    .line 204
    move-object v7, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p1

    if-ne v10, v8, :cond_0

    .line 205
    return-void

    .line 208
    :cond_0
    if-eqz v9, :cond_1

    .line 209
    new-instance v0, Lccsanandroid/animation/AnimatorSet;

    invoke-direct {v0}, Lccsanandroid/animation/AnimatorSet;-><init>()V

    move-object v11, v0

    .line 210
    .local v11, "captionAnimator":Lccsanandroid/animation/AnimatorSet;
    iput-object v11, v7, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionAnimator:Lccsanandroid/animation/Animator;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 213
    .local v12, "captionAnimatorList":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator;>;"
    iget-boolean v2, v7, Lccsancom/google/android/material/textfield/IndicatorViewController;->helperTextEnabled:Z

    iget-object v3, v7, Lccsancom/google/android/material/textfield/IndicatorViewController;->helperTextView:Lccsanandroid/widget/TextView;

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, v12

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lccsancom/google/android/material/textfield/IndicatorViewController;->createCaptionAnimators(Ljava/util/List;ZLccsanandroid/widget/TextView;III)V

    .line 221
    iget-boolean v2, v7, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorEnabled:Z

    iget-object v3, v7, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorView:Lccsanandroid/widget/TextView;

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v6}, Lccsancom/google/android/material/textfield/IndicatorViewController;->createCaptionAnimators(Ljava/util/List;ZLccsanandroid/widget/TextView;III)V

    .line 229
    invoke-static {v11, v12}, Lccsancom/google/android/material/animation/AnimatorSetCompat;->playTogether(Lccsanandroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 230
    invoke-direct/range {p0 .. p1}, Lccsancom/google/android/material/textfield/IndicatorViewController;->getCaptionViewFromDisplayState(I)Lccsanandroid/widget/TextView;

    move-result-object v6

    .line 231
    .local v6, "captionViewToHide":Lccsanandroid/widget/TextView;
    invoke-direct {p0, v8}, Lccsancom/google/android/material/textfield/IndicatorViewController;->getCaptionViewFromDisplayState(I)Lccsanandroid/widget/TextView;

    move-result-object v13

    .line 233
    .local v13, "captionViewToShow":Lccsanandroid/widget/TextView;
    new-instance v14, Lccsancom/google/android/material/textfield/IndicatorViewController$1;

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p2

    move-object v3, v6

    move/from16 v4, p1

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lccsancom/google/android/material/textfield/IndicatorViewController$1;-><init>(Lccsancom/google/android/material/textfield/IndicatorViewController;ILccsanandroid/widget/TextView;ILccsanandroid/widget/TextView;)V

    invoke-virtual {v11, v14}, Lccsanandroid/animation/AnimatorSet;->addListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 259
    invoke-virtual {v11}, Lccsanandroid/animation/AnimatorSet;->start()V

    .line 260
    .end local v6    # "captionViewToHide":Lccsanandroid/widget/TextView;
    .end local v11    # "captionAnimator":Lccsanandroid/animation/AnimatorSet;
    .end local v12    # "captionAnimatorList":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator;>;"
    .end local v13    # "captionViewToShow":Lccsanandroid/widget/TextView;
    goto :goto_0

    .line 261
    :cond_1
    invoke-direct/range {p0 .. p2}, Lccsancom/google/android/material/textfield/IndicatorViewController;->setCaptionViewVisibilities(II)V

    .line 263
    :goto_0
    iget-object v0, v7, Lccsancom/google/android/material/textfield/IndicatorViewController;->textInputView:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lccsancom/google/android/material/textfield/TextInputLayout;->updateEditTextBackground()V

    .line 264
    iget-object v0, v7, Lccsancom/google/android/material/textfield/IndicatorViewController;->textInputView:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v9}, Lccsancom/google/android/material/textfield/TextInputLayout;->updateLabelState(Z)V

    .line 265
    iget-object v0, v7, Lccsancom/google/android/material/textfield/IndicatorViewController;->textInputView:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lccsancom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    .line 266
    return-void
.end method


# virtual methods
.method addIndicator(Lccsanandroid/widget/TextView;I)V
    .locals 5
    .param p1, "indicator"    # Lccsanandroid/widget/TextView;
    .param p2, "index"    # I

    .line 391
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Lccsanandroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionArea:Lccsanandroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 392
    new-instance v0, Lccsanandroid/widget/LinearLayout;

    iget-object v3, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->context:Lccsanandroid/content/Context;

    invoke-direct {v0, v3}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Lccsanandroid/widget/LinearLayout;

    .line 393
    invoke-virtual {v0, v1}, Lccsanandroid/widget/LinearLayout;->setOrientation(I)V

    .line 394
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->textInputView:Lccsancom/google/android/material/textfield/TextInputLayout;

    iget-object v3, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Lccsanandroid/widget/LinearLayout;

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4, v2}, Lccsancom/google/android/material/textfield/TextInputLayout;->addView(Lccsanandroid/view/View;II)V

    .line 396
    new-instance v0, Lccsanandroid/widget/FrameLayout;

    iget-object v3, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->context:Lccsanandroid/content/Context;

    invoke-direct {v0, v3}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionArea:Lccsanandroid/widget/FrameLayout;

    .line 397
    new-instance v0, Lccsanandroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 399
    .local v0, "captionAreaLp":Lccsanandroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Lccsanandroid/widget/LinearLayout;

    iget-object v4, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionArea:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v3, v4, v0}, Lccsanandroid/widget/LinearLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 401
    iget-object v3, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->textInputView:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3}, Lccsancom/google/android/material/textfield/TextInputLayout;->getEditText()Lccsanandroid/widget/EditText;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 402
    invoke-virtual {p0}, Lccsancom/google/android/material/textfield/IndicatorViewController;->adjustIndicatorPadding()V

    .line 406
    .end local v0    # "captionAreaLp":Lccsanandroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0, p2}, Lccsancom/google/android/material/textfield/IndicatorViewController;->isCaptionView(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionArea:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/FrameLayout;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionArea:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;)V

    goto :goto_0

    .line 410
    :cond_1
    new-instance v0, Lccsanandroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 412
    .local v0, "indicatorAreaLp":Lccsanandroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v2, p1, v0}, Lccsanandroid/widget/LinearLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 414
    .end local v0    # "indicatorAreaLp":Lccsanandroid/widget/LinearLayout$LayoutParams;
    :goto_0
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/LinearLayout;->setVisibility(I)V

    .line 415
    iget v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->indicatorsAdded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->indicatorsAdded:I

    .line 416
    return-void
.end method

.method adjustIndicatorPadding()V
    .locals 7

    .line 356
    invoke-direct {p0}, Lccsancom/google/android/material/textfield/IndicatorViewController;->canAdjustIndicatorPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->textInputView:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lccsancom/google/android/material/textfield/TextInputLayout;->getEditText()Lccsanandroid/widget/EditText;

    move-result-object v0

    .line 358
    .local v0, "editText":Lccsanandroid/widget/EditText;
    iget-object v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->context:Lccsanandroid/content/Context;

    invoke-static {v1}, Lccsancom/google/android/material/resources/MaterialResources;->isFontScaleAtLeast1_3(Lccsanandroid/content/Context;)Z

    move-result v1

    .line 359
    .local v1, "isFontScaleLarge":Z
    iget-object v2, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Lccsanandroid/widget/LinearLayout;

    sget v3, Lccsancom/google/android/material/R$dimen;->material_helper_text_font_1_3_padding_horizontal:I

    .line 364
    invoke-static {v0}, Lccsanandroidx/core/view/ViewCompat;->getPaddingStart(Lccsanandroid/view/View;)I

    move-result v4

    .line 361
    invoke-direct {p0, v1, v3, v4}, Lccsancom/google/android/material/textfield/IndicatorViewController;->getIndicatorPadding(ZII)I

    move-result v3

    sget v4, Lccsancom/google/android/material/R$dimen;->material_helper_text_font_1_3_padding_top:I

    iget-object v5, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->context:Lccsanandroid/content/Context;

    .line 369
    invoke-virtual {v5}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v5

    sget v6, Lccsancom/google/android/material/R$dimen;->material_helper_text_default_padding_top:I

    .line 370
    invoke-virtual {v5, v6}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 365
    invoke-direct {p0, v1, v4, v5}, Lccsancom/google/android/material/textfield/IndicatorViewController;->getIndicatorPadding(ZII)I

    move-result v4

    sget v5, Lccsancom/google/android/material/R$dimen;->material_helper_text_font_1_3_padding_horizontal:I

    .line 374
    invoke-static {v0}, Lccsanandroidx/core/view/ViewCompat;->getPaddingEnd(Lccsanandroid/view/View;)I

    move-result v6

    .line 371
    invoke-direct {p0, v1, v5, v6}, Lccsancom/google/android/material/textfield/IndicatorViewController;->getIndicatorPadding(ZII)I

    move-result v5

    const/4 v6, 0x0

    .line 359
    invoke-static {v2, v3, v4, v5, v6}, Lccsanandroidx/core/view/ViewCompat;->setPaddingRelative(Lccsanandroid/view/View;IIII)V

    .line 377
    .end local v0    # "editText":Lccsanandroid/widget/EditText;
    .end local v1    # "isFontScaleLarge":Z
    :cond_0
    return-void
.end method

.method cancelCaptionAnimator()V
    .locals 1

    .line 333
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionAnimator:Lccsanandroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0}, Lccsanandroid/animation/Animator;->cancel()V

    .line 336
    :cond_0
    return-void
.end method

.method errorIsDisplayed()Z
    .locals 1

    .line 515
    iget v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    invoke-direct {p0, v0}, Lccsancom/google/android/material/textfield/IndicatorViewController;->isCaptionStateError(I)Z

    move-result v0

    return v0
.end method

.method errorShouldBeShown()Z
    .locals 1

    .line 519
    iget v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    invoke-direct {p0, v0}, Lccsancom/google/android/material/textfield/IndicatorViewController;->isCaptionStateError(I)Z

    move-result v0

    return v0
.end method

.method getErrorContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 599
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorViewContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method getErrorText()Ljava/lang/CharSequence;
    .locals 1

    .line 544
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method getErrorViewCurrentTextColor()I
    .locals 1

    .line 568
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorView:Lccsanandroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method getErrorViewTextColors()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 573
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorView:Lccsanandroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->getTextColors()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getHelperText()Ljava/lang/CharSequence;
    .locals 1

    .line 548
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->helperText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method getHelperTextViewColors()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 609
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->helperTextView:Lccsanandroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->getTextColors()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getHelperTextViewCurrentTextColor()I
    .locals 1

    .line 604
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->helperTextView:Lccsanandroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method helperTextIsDisplayed()Z
    .locals 1

    .line 529
    iget v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    invoke-direct {p0, v0}, Lccsancom/google/android/material/textfield/IndicatorViewController;->isCaptionStateHelperText(I)Z

    move-result v0

    return v0
.end method

.method helperTextShouldBeShown()Z
    .locals 1

    .line 533
    iget v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    invoke-direct {p0, v0}, Lccsancom/google/android/material/textfield/IndicatorViewController;->isCaptionStateHelperText(I)Z

    move-result v0

    return v0
.end method

.method hideError()V
    .locals 4

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorText:Ljava/lang/CharSequence;

    .line 167
    invoke-virtual {p0}, Lccsancom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    .line 169
    iget v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 171
    iget-boolean v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->helperTextEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->helperText:Ljava/lang/CharSequence;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    const/4 v1, 0x2

    iput v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    goto :goto_0

    .line 175
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    .line 178
    :cond_1
    :goto_0
    iget v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    iget v2, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    iget-object v3, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorView:Lccsanandroid/widget/TextView;

    .line 179
    invoke-direct {p0, v3, v0}, Lccsancom/google/android/material/textfield/IndicatorViewController;->shouldAnimateCaptionView(Lccsanandroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 178
    invoke-direct {p0, v1, v2, v0}, Lccsancom/google/android/material/textfield/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V

    .line 180
    return-void
.end method

.method hideHelperText()V
    .locals 4

    .line 142
    invoke-virtual {p0}, Lccsancom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    .line 145
    iget v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 146
    const/4 v1, 0x0

    iput v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    .line 148
    :cond_0
    iget v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    iget-object v2, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->helperTextView:Lccsanandroid/widget/TextView;

    const/4 v3, 0x0

    .line 149
    invoke-direct {p0, v2, v3}, Lccsancom/google/android/material/textfield/IndicatorViewController;->shouldAnimateCaptionView(Lccsanandroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 148
    invoke-direct {p0, v0, v1, v2}, Lccsancom/google/android/material/textfield/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V

    .line 150
    return-void
.end method

.method isCaptionView(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 339
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method isErrorEnabled()Z
    .locals 1

    .line 473
    iget-boolean v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorEnabled:Z

    return v0
.end method

.method isHelperTextEnabled()Z
    .locals 1

    .line 477
    iget-boolean v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->helperTextEnabled:Z

    return v0
.end method

.method removeIndicator(Lccsanandroid/widget/TextView;I)V
    .locals 2
    .param p1, "indicator"    # Lccsanandroid/widget/TextView;
    .param p2, "index"    # I

    .line 419
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Lccsanandroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 420
    return-void

    .line 423
    :cond_0
    invoke-virtual {p0, p2}, Lccsancom/google/android/material/textfield/IndicatorViewController;->isCaptionView(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionArea:Lccsanandroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {v0, p1}, Lccsanandroid/widget/FrameLayout;->removeView(Lccsanandroid/view/View;)V

    goto :goto_0

    .line 426
    :cond_1
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/LinearLayout;->removeView(Lccsanandroid/view/View;)V

    .line 428
    :goto_0
    iget v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->indicatorsAdded:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->indicatorsAdded:I

    .line 429
    iget-object v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Lccsanandroid/widget/LinearLayout;

    invoke-direct {p0, v1, v0}, Lccsancom/google/android/material/textfield/IndicatorViewController;->setViewGroupGoneIfEmpty(Lccsanandroid/view/ViewGroup;I)V

    .line 430
    return-void
.end method

.method setErrorContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "errorContentDescription"    # Ljava/lang/CharSequence;

    .line 591
    iput-object p1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorViewContentDescription:Ljava/lang/CharSequence;

    .line 592
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorView:Lccsanandroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 593
    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 595
    :cond_0
    return-void
.end method

.method setErrorEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 440
    iget-boolean v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorEnabled:Z

    if-ne v0, p1, :cond_0

    .line 441
    return-void

    .line 445
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    .line 447
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 448
    new-instance v1, Lccsanandroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->context:Lccsanandroid/content/Context;

    invoke-direct {v1, v2}, Lccsanandroidx/appcompat/widget/AppCompatTextView;-><init>(Lccsanandroid/content/Context;)V

    iput-object v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorView:Lccsanandroid/widget/TextView;

    .line 449
    sget v2, Lccsancom/google/android/material/R$id;->textinput_error:I

    invoke-virtual {v1, v2}, Lccsanandroid/widget/TextView;->setId(I)V

    .line 450
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 451
    iget-object v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorView:Lccsanandroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lccsanandroid/widget/TextView;->setTextAlignment(I)V

    .line 453
    :cond_1
    iget-object v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->typeface:Lccsanandroid/graphics/Typeface;

    if-eqz v1, :cond_2

    .line 454
    iget-object v2, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorView:Lccsanandroid/widget/TextView;

    invoke-virtual {v2, v1}, Lccsanandroid/widget/TextView;->setTypeface(Lccsanandroid/graphics/Typeface;)V

    .line 456
    :cond_2
    iget v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorTextAppearance:I

    invoke-virtual {p0, v1}, Lccsancom/google/android/material/textfield/IndicatorViewController;->setErrorTextAppearance(I)V

    .line 457
    iget-object v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorViewTextColor:Lccsanandroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Lccsancom/google/android/material/textfield/IndicatorViewController;->setErrorViewTextColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 458
    iget-object v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorViewContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lccsancom/google/android/material/textfield/IndicatorViewController;->setErrorContentDescription(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorView:Lccsanandroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 460
    iget-object v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorView:Lccsanandroid/widget/TextView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lccsanandroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Lccsanandroid/view/View;I)V

    .line 461
    iget-object v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorView:Lccsanandroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lccsancom/google/android/material/textfield/IndicatorViewController;->addIndicator(Lccsanandroid/widget/TextView;I)V

    goto :goto_0

    .line 463
    :cond_3
    invoke-virtual {p0}, Lccsancom/google/android/material/textfield/IndicatorViewController;->hideError()V

    .line 464
    iget-object v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorView:Lccsanandroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lccsancom/google/android/material/textfield/IndicatorViewController;->removeIndicator(Lccsanandroid/widget/TextView;I)V

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorView:Lccsanandroid/widget/TextView;

    .line 466
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->textInputView:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lccsancom/google/android/material/textfield/TextInputLayout;->updateEditTextBackground()V

    .line 467
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->textInputView:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lccsancom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    .line 469
    :goto_0
    iput-boolean p1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorEnabled:Z

    .line 470
    return-void
.end method

.method setErrorTextAppearance(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 584
    iput p1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorTextAppearance:I

    .line 585
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorView:Lccsanandroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 586
    iget-object v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->textInputView:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v0, p1}, Lccsancom/google/android/material/textfield/TextInputLayout;->setTextAppearanceCompatWithErrorFallback(Lccsanandroid/widget/TextView;I)V

    .line 588
    :cond_0
    return-void
.end method

.method setErrorViewTextColor(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "errorViewTextColor"    # Lccsanandroid/content/res/ColorStateList;

    .line 577
    iput-object p1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorViewTextColor:Lccsanandroid/content/res/ColorStateList;

    .line 578
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorView:Lccsanandroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 579
    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setTextColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 581
    :cond_0
    return-void
.end method

.method setHelperTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 620
    iput p1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->helperTextTextAppearance:I

    .line 621
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->helperTextView:Lccsanandroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 622
    invoke-static {v0, p1}, Lccsanandroidx/core/widget/TextViewCompat;->setTextAppearance(Lccsanandroid/widget/TextView;I)V

    .line 624
    :cond_0
    return-void
.end method

.method setHelperTextEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 482
    iget-boolean v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->helperTextEnabled:Z

    if-ne v0, p1, :cond_0

    .line 483
    return-void

    .line 487
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    .line 489
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 490
    new-instance v1, Lccsanandroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->context:Lccsanandroid/content/Context;

    invoke-direct {v1, v2}, Lccsanandroidx/appcompat/widget/AppCompatTextView;-><init>(Lccsanandroid/content/Context;)V

    iput-object v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->helperTextView:Lccsanandroid/widget/TextView;

    .line 491
    sget v2, Lccsancom/google/android/material/R$id;->textinput_helper_text:I

    invoke-virtual {v1, v2}, Lccsanandroid/widget/TextView;->setId(I)V

    .line 492
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 493
    iget-object v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->helperTextView:Lccsanandroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lccsanandroid/widget/TextView;->setTextAlignment(I)V

    .line 495
    :cond_1
    iget-object v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->typeface:Lccsanandroid/graphics/Typeface;

    if-eqz v1, :cond_2

    .line 496
    iget-object v2, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->helperTextView:Lccsanandroid/widget/TextView;

    invoke-virtual {v2, v1}, Lccsanandroid/widget/TextView;->setTypeface(Lccsanandroid/graphics/Typeface;)V

    .line 498
    :cond_2
    iget-object v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->helperTextView:Lccsanandroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 499
    iget-object v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->helperTextView:Lccsanandroid/widget/TextView;

    invoke-static {v1, v0}, Lccsanandroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Lccsanandroid/view/View;I)V

    .line 501
    iget v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->helperTextTextAppearance:I

    invoke-virtual {p0, v1}, Lccsancom/google/android/material/textfield/IndicatorViewController;->setHelperTextAppearance(I)V

    .line 502
    iget-object v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->helperTextViewTextColor:Lccsanandroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Lccsancom/google/android/material/textfield/IndicatorViewController;->setHelperTextViewTextColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 503
    iget-object v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->helperTextView:Lccsanandroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lccsancom/google/android/material/textfield/IndicatorViewController;->addIndicator(Lccsanandroid/widget/TextView;I)V

    goto :goto_0

    .line 505
    :cond_3
    invoke-virtual {p0}, Lccsancom/google/android/material/textfield/IndicatorViewController;->hideHelperText()V

    .line 506
    iget-object v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->helperTextView:Lccsanandroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lccsancom/google/android/material/textfield/IndicatorViewController;->removeIndicator(Lccsanandroid/widget/TextView;I)V

    .line 507
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->helperTextView:Lccsanandroid/widget/TextView;

    .line 508
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->textInputView:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lccsancom/google/android/material/textfield/TextInputLayout;->updateEditTextBackground()V

    .line 509
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->textInputView:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lccsancom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    .line 511
    :goto_0
    iput-boolean p1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->helperTextEnabled:Z

    .line 512
    return-void
.end method

.method setHelperTextViewTextColor(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "helperTextViewTextColor"    # Lccsanandroid/content/res/ColorStateList;

    .line 613
    iput-object p1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->helperTextViewTextColor:Lccsanandroid/content/res/ColorStateList;

    .line 614
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->helperTextView:Lccsanandroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 615
    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setTextColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 617
    :cond_0
    return-void
.end method

.method setTypefaces(Lccsanandroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Lccsanandroid/graphics/Typeface;

    .line 553
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->typeface:Lccsanandroid/graphics/Typeface;

    if-eq p1, v0, :cond_0

    .line 554
    iput-object p1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->typeface:Lccsanandroid/graphics/Typeface;

    .line 555
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorView:Lccsanandroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lccsancom/google/android/material/textfield/IndicatorViewController;->setTextViewTypeface(Lccsanandroid/widget/TextView;Lccsanandroid/graphics/Typeface;)V

    .line 556
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->helperTextView:Lccsanandroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lccsancom/google/android/material/textfield/IndicatorViewController;->setTextViewTypeface(Lccsanandroid/widget/TextView;Lccsanandroid/graphics/Typeface;)V

    .line 558
    :cond_0
    return-void
.end method

.method showError(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "errorText"    # Ljava/lang/CharSequence;

    .line 153
    invoke-virtual {p0}, Lccsancom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    .line 154
    iput-object p1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorText:Ljava/lang/CharSequence;

    .line 155
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorView:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 159
    iput v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    .line 161
    :cond_0
    iget v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    iget-object v2, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->errorView:Lccsanandroid/widget/TextView;

    .line 162
    invoke-direct {p0, v2, p1}, Lccsancom/google/android/material/textfield/IndicatorViewController;->shouldAnimateCaptionView(Lccsanandroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 161
    invoke-direct {p0, v0, v1, v2}, Lccsancom/google/android/material/textfield/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V

    .line 163
    return-void
.end method

.method showHelper(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "helperText"    # Ljava/lang/CharSequence;

    .line 129
    invoke-virtual {p0}, Lccsancom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    .line 130
    iput-object p1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->helperText:Ljava/lang/CharSequence;

    .line 131
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->helperTextView:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 135
    iput v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    .line 137
    :cond_0
    iget v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    iget-object v2, p0, Lccsancom/google/android/material/textfield/IndicatorViewController;->helperTextView:Lccsanandroid/widget/TextView;

    .line 138
    invoke-direct {p0, v2, p1}, Lccsancom/google/android/material/textfield/IndicatorViewController;->shouldAnimateCaptionView(Lccsanandroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 137
    invoke-direct {p0, v0, v1, v2}, Lccsancom/google/android/material/textfield/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V

    .line 139
    return-void
.end method
