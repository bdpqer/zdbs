.class public final Lcom/sinpo/tic/TTSExamplePref;
.super Landroid/preference/Preference;

# interfaces
.implements Lcom/sinpo/tic/f;


# instance fields
.field private a:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    :cond_1
    const-string v0, "1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private a(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sinpo/tic/TTSExamplePref;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sinpo/tic/TTSExamplePref;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/sinpo/tic/TTSExamplePref;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sinpo/tic/TTSExamplePref;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sinpo/tic/TTSExamplePref;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    iget-object v0, p0, Lcom/sinpo/tic/TTSExamplePref;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sinpo/tic/TTSExamplePref;->a(Z)V

    invoke-virtual {p0}, Lcom/sinpo/tic/TTSExamplePref;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sinpo/tic/TTSExamplePref;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method protected final onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0b0008

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sinpo/tic/TTSExamplePref;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sinpo/tic/TTSExamplePref;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Landroid/animation/LayoutTransition;

    invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sinpo/tic/TTSExamplePref;->a(Z)V

    return-void
.end method

.method protected final onClick()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sinpo/tic/TTSExamplePref;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sinpo/tic/TTSExamplePref;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sinpo/tic/TTSExamplePref;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "x"

    invoke-static {v0, v1, v2, p0, v2}, Lcom/sinpo/tic/Service;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sinpo/tic/f;Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sinpo/tic/TTSExamplePref;->a(Z)V

    :cond_0
    return-void
.end method

.method protected final onPrepareForRemoval()V
    .locals 1

    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sinpo/tic/TTSExamplePref;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sinpo/tic/TTSExamplePref;->a:Landroid/widget/ImageView;

    return-void
.end method
