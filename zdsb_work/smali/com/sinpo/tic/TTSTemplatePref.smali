.class public final Lcom/sinpo/tic/TTSTemplatePref;
.super Landroid/preference/DialogPreference;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sinpo/tic/f;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/graphics/drawable/AnimationDrawable;

.field private g:Landroid/graphics/drawable/AnimationDrawable;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string v0, ""

    move-object v1, v0

    :goto_0
    if-nez p1, :cond_1

    const-string v0, ""

    :goto_1
    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sinpo/tic/TTSTemplatePref;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/sinpo/tic/TTSTemplatePref;->persistString(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/sinpo/tic/TTSTemplatePref;->shouldDisableDependents()Z

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sinpo/tic/TTSTemplatePref;->notifyDependencyChange(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    invoke-virtual {p0}, Lcom/sinpo/tic/TTSTemplatePref;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sinpo/tic/TTSExamplePref;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method protected final onBindDialogView(Landroid/view/View;)V
    .locals 5

    const/16 v4, 0x7c

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sinpo/tic/TTSTemplatePref;->getContext()Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sinpo/tic/TTSTemplatePref;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "voice"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "temp_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sinpo/tic/TTSTemplatePref;->setKey(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->a:Ljava/lang/String;

    :goto_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sinpo/tic/TTSTemplatePref;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sinpo/tic/TTSTemplatePref;->b:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->c:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sinpo/tic/TTSTemplatePref;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sinpo/tic/TTSTemplatePref;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const-string v0, "temp_"

    invoke-virtual {p0, v0}, Lcom/sinpo/tic/TTSTemplatePref;->setKey(Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, ""

    iput-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->b:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v0, ""

    iput-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->b:Ljava/lang/String;

    goto :goto_1
.end method

.method protected final onCreateDialogView()Landroid/view/View;
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sinpo/tic/TTSTemplatePref;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x7f090000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/sinpo/tic/TTSTemplatePref;->h:I

    const v2, 0x7f090001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->i:I

    const v0, 0x7f0b000e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->d:Landroid/widget/EditText;

    const v0, 0x7f0b000f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->e:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v4

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->f:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v4

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->g:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->d:Landroid/widget/EditText;

    invoke-virtual {p0, v0, v3}, Lcom/sinpo/tic/TTSTemplatePref;->onFocusChange(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->e:Landroid/widget/EditText;

    invoke-virtual {p0, v0, v3}, Lcom/sinpo/tic/TTSTemplatePref;->onFocusChange(Landroid/view/View;Z)V

    return-object v1
.end method

.method protected final onDialogClosed(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/sinpo/tic/TTSTemplatePref;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sinpo/tic/TTSTemplatePref;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sinpo/tic/TTSTemplatePref;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sinpo/tic/TTSTemplatePref;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iput-object v2, p0, Lcom/sinpo/tic/TTSTemplatePref;->e:Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sinpo/tic/TTSTemplatePref;->d:Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sinpo/tic/TTSTemplatePref;->g:Landroid/graphics/drawable/AnimationDrawable;

    iput-object v2, p0, Lcom/sinpo/tic/TTSTemplatePref;->f:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->d:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->f:Landroid/graphics/drawable/AnimationDrawable;

    move-object v1, v0

    :goto_0
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->h:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/AnimationDrawable;->setTint(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->g:Landroid/graphics/drawable/AnimationDrawable;

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->i:I

    goto :goto_1
.end method

.method protected final onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2

    iget-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_0
    return-void
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sinpo/tic/o;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_1
    check-cast p1, Lcom/sinpo/tic/o;

    invoke-virtual {p1}, Lcom/sinpo/tic/o;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p1, Lcom/sinpo/tic/o;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/sinpo/tic/o;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/sinpo/tic/o;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/sinpo/tic/TTSTemplatePref;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sinpo/tic/TTSTemplatePref;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sinpo/tic/TTSTemplatePref;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sinpo/tic/TTSTemplatePref;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/sinpo/tic/o;

    invoke-direct {v1, v0}, Lcom/sinpo/tic/o;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->a:Ljava/lang/String;

    iput-object v0, v1, Lcom/sinpo/tic/o;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->b:Ljava/lang/String;

    iput-object v0, v1, Lcom/sinpo/tic/o;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->c:Ljava/lang/String;

    iput-object v0, v1, Lcom/sinpo/tic/o;->c:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method protected final onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/sinpo/tic/TTSTemplatePref;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sinpo/tic/TTSTemplatePref;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p2}, Lcom/sinpo/tic/TTSTemplatePref;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->d:Landroid/widget/EditText;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->f:Landroid/graphics/drawable/AnimationDrawable;

    move-object v1, v0

    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    shl-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->d:Landroid/widget/EditText;

    if-ne p1, v0, :cond_2

    const-string v0, "h"

    move-object v2, v0

    :goto_1
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sinpo/tic/TTSTemplatePref;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "x"

    invoke-static {v2, v3, v0, p0, v1}, Lcom/sinpo/tic/Service;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sinpo/tic/f;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    move-result v0

    :goto_2
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->g:Landroid/graphics/drawable/AnimationDrawable;

    move-object v1, v0

    goto :goto_0

    :cond_2
    const-string v0, "m"

    move-object v2, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final shouldDisableDependents()Z
    .locals 1

    iget-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sinpo/tic/TTSTemplatePref;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/preference/DialogPreference;->shouldDisableDependents()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
