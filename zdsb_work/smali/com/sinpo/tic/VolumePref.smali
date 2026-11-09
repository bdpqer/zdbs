.class public final Lcom/sinpo/tic/VolumePref;
.super Landroid/preference/ListPreference;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/sinpo/tic/VolumePref;I)V
    .locals 0

    iput p1, p0, Lcom/sinpo/tic/VolumePref;->a:I

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/sinpo/tic/VolumePref;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lcom/sinpo/tic/VolumePref;->a:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sinpo/tic/Service;->a(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/sinpo/tic/VolumePref;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    iget-object v2, p0, Lcom/sinpo/tic/VolumePref;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final onDialogClosed(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/sinpo/tic/VolumePref;->a:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/sinpo/tic/VolumePref;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sinpo/tic/VolumePref;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lcom/sinpo/tic/VolumePref;->a:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sinpo/tic/VolumePref;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sinpo/tic/VolumePref;->setValue(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sinpo/tic/VolumePref;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/sinpo/tic/VolumePref;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sinpo/tic/VolumePref;->c:Landroid/media/MediaPlayer;

    return-void
.end method

.method protected final onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p0}, Lcom/sinpo/tic/VolumePref;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ring"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sinpo/tic/VolumePref;->b:Ljava/lang/String;

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/sinpo/tic/VolumePref;->c:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/sinpo/tic/VolumePref;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sinpo/tic/VolumePref;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sinpo/tic/VolumePref;->a:I

    invoke-virtual {p0}, Lcom/sinpo/tic/VolumePref;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lcom/sinpo/tic/VolumePref;->a:I

    new-instance v2, Lcom/sinpo/tic/s;

    invoke-direct {v2, p0}, Lcom/sinpo/tic/s;-><init>(Lcom/sinpo/tic/VolumePref;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x104000a

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method
