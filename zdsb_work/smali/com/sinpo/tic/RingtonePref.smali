.class public final Lcom/sinpo/tic/RingtonePref;
.super Landroid/preference/ListPreference;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:F

.field private d:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f070030

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sinpo/tic/RingtonePref;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f070030

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sinpo/tic/RingtonePref;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sinpo/tic/RingtonePref;->a()V

    return-void
.end method

.method private a()V
    .locals 10

    const/4 v1, 0x0

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "is_alarm=1 or is_notification=1)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "title"

    aput-object v4, v2, v1

    const/4 v4, 0x1

    const-string v5, "_data"

    aput-object v5, v2, v4

    invoke-virtual {p0}, Lcom/sinpo/tic/RingtonePref;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v3, v2, v0, v5}, Lcom/sinpo/tic/RingtonePref;->a(Landroid/content/ContentResolver;Landroid/util/ArrayMap;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/sinpo/tic/RingtonePref;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v3, v2, v0, v5}, Lcom/sinpo/tic/RingtonePref;->a(Landroid/content/ContentResolver;Landroid/util/ArrayMap;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    :cond_0
    const-string v0, ""

    const-string v2, ""

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    new-array v5, v4, [Ljava/lang/String;

    new-array v6, v4, [Ljava/lang/String;

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_1

    add-int/lit8 v3, v4, -0x1

    move v2, v1

    :goto_1
    if-lt v2, v4, :cond_2

    iget-object v0, p0, Lcom/sinpo/tic/RingtonePref;->a:Ljava/lang/String;

    aput-object v0, v5, v1

    invoke-virtual {p0, v5}, Lcom/sinpo/tic/RingtonePref;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v6}, Lcom/sinpo/tic/RingtonePref;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v5, v2

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v6, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_2
    sub-int v7, v3, v2

    if-lt v0, v7, :cond_3

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v0, 0x1

    aget-object v8, v5, v0

    aget-object v9, v5, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_4

    aget-object v8, v5, v0

    aget-object v9, v5, v7

    aput-object v9, v5, v0

    aput-object v8, v5, v7

    aget-object v8, v6, v0

    aget-object v9, v6, v7

    aput-object v9, v6, v0

    aput-object v8, v6, v7

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private static a(Landroid/content/ContentResolver;Landroid/util/ArrayMap;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p4

    move-object v2, p2

    move-object v3, p3

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    const-string v1, "title"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "_data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_3
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {p1, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_2
    if-eqz v0, :cond_1

    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_3

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_4
    throw v0

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v0, v6

    goto :goto_2
.end method

.method static synthetic a(Lcom/sinpo/tic/RingtonePref;I)V
    .locals 0

    iput p1, p0, Lcom/sinpo/tic/RingtonePref;->b:I

    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/sinpo/tic/RingtonePref;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    invoke-virtual {p0}, Lcom/sinpo/tic/RingtonePref;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget v1, p0, Lcom/sinpo/tic/RingtonePref;->c:F

    iget v2, p0, Lcom/sinpo/tic/RingtonePref;->c:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
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

    iget v0, p0, Lcom/sinpo/tic/RingtonePref;->b:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/sinpo/tic/RingtonePref;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sinpo/tic/RingtonePref;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lcom/sinpo/tic/RingtonePref;->b:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sinpo/tic/RingtonePref;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sinpo/tic/RingtonePref;->setValue(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sinpo/tic/RingtonePref;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/sinpo/tic/RingtonePref;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sinpo/tic/RingtonePref;->d:Landroid/media/MediaPlayer;

    return-void
.end method

.method protected final onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    invoke-direct {p0}, Lcom/sinpo/tic/RingtonePref;->a()V

    invoke-virtual {p0}, Lcom/sinpo/tic/RingtonePref;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "volume"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sinpo/tic/Service;->a(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/sinpo/tic/RingtonePref;->c:F

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/sinpo/tic/RingtonePref;->d:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/sinpo/tic/RingtonePref;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sinpo/tic/RingtonePref;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sinpo/tic/RingtonePref;->b:I

    invoke-virtual {p0}, Lcom/sinpo/tic/RingtonePref;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lcom/sinpo/tic/RingtonePref;->b:I

    new-instance v2, Lcom/sinpo/tic/g;

    invoke-direct {v2, p0}, Lcom/sinpo/tic/g;-><init>(Lcom/sinpo/tic/RingtonePref;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x104000a

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sinpo/tic/RingtonePref;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/sinpo/tic/RingtonePref;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v0, v1, v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sinpo/tic/RingtonePref;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sinpo/tic/RingtonePref;->a:Ljava/lang/String;

    goto :goto_0
.end method
