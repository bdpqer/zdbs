.class public final Lcom/sinpo/tic/TTSLanguagePref;
.super Landroid/preference/ListPreference;

# interfaces
.implements Lcom/sinpo/tic/f;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f070024

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sinpo/tic/TTSLanguagePref;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f070024

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sinpo/tic/TTSLanguagePref;->a:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sinpo/tic/TTSLanguagePref;->setEntries([Ljava/lang/CharSequence;)V

    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sinpo/tic/TTSLanguagePref;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/sinpo/tic/TTSLanguagePref;I)V
    .locals 0

    iput p1, p0, Lcom/sinpo/tic/TTSLanguagePref;->b:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sinpo/tic/TTSLanguagePref;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sinpo/tic/TTSLanguagePref;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sinpo/tic/TTSLanguagePref;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sinpo/tic/TTSLanguagePref;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "l"

    invoke-static {v0, v1, v2, p0, v2}, Lcom/sinpo/tic/Service;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sinpo/tic/f;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/sinpo/tic/TTSLanguagePref;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/sinpo/tic/TTSLanguagePref;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sinpo/tic/TTSLanguagePref;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sinpo/tic/TTSLanguagePref;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    aget-object v0, v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sinpo/tic/TTSLanguagePref;->setSummary(Ljava/lang/CharSequence;)V

    if-ltz v1, :cond_1

    invoke-virtual {p0}, Lcom/sinpo/tic/TTSLanguagePref;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/sinpo/tic/TTSLanguagePref;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sinpo/tic/TTSLanguagePref;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final onActivityDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/preference/ListPreference;->onActivityDestroy()V

    return-void
.end method

.method protected final onBindView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0b0008

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sinpo/tic/TTSLanguagePref;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sinpo/tic/TTSLanguagePref;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sinpo/tic/TTSLanguagePref;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected final onDialogClosed(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/sinpo/tic/TTSLanguagePref;->b:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/sinpo/tic/TTSLanguagePref;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sinpo/tic/TTSLanguagePref;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lcom/sinpo/tic/TTSLanguagePref;->b:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sinpo/tic/TTSLanguagePref;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sinpo/tic/TTSLanguagePref;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sinpo/tic/TTSLanguagePref;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sinpo/tic/TTSLanguagePref;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p0}, Lcom/sinpo/tic/TTSLanguagePref;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sinpo/tic/TTSLanguagePref;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sinpo/tic/TTSLanguagePref;->b:I

    invoke-virtual {p0}, Lcom/sinpo/tic/TTSLanguagePref;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lcom/sinpo/tic/TTSLanguagePref;->b:I

    new-instance v2, Lcom/sinpo/tic/n;

    invoke-direct {v2, p0}, Lcom/sinpo/tic/n;-><init>(Lcom/sinpo/tic/TTSLanguagePref;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sinpo/tic/TTSLanguagePref;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/sinpo/tic/TTSLanguagePref;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v0, v1, v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sinpo/tic/TTSLanguagePref;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sinpo/tic/TTSLanguagePref;->a:Ljava/lang/String;

    goto :goto_0
.end method
