.class final Lcom/sinpo/tic/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field private a:Landroid/os/ResultReceiver;

.field private b:I

.field private synthetic c:Lcom/sinpo/tic/Service;


# direct methods
.method constructor <init>(Lcom/sinpo/tic/Service;ILandroid/os/ResultReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/sinpo/tic/h;->c:Lcom/sinpo/tic/Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/sinpo/tic/h;->a:Landroid/os/ResultReceiver;

    iput p2, p0, Lcom/sinpo/tic/h;->b:I

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;F)V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    invoke-static {}, Lcom/sinpo/tic/Service;->a()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    invoke-virtual {v0, p2, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/sinpo/tic/h;->onCompletion(Landroid/media/MediaPlayer;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sinpo/tic/h;->a:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sinpo/tic/h;->a:Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_1
    iget-object v0, p0, Lcom/sinpo/tic/h;->c:Lcom/sinpo/tic/Service;

    iget v1, p0, Lcom/sinpo/tic/h;->b:I

    invoke-virtual {v0, v1}, Lcom/sinpo/tic/Service;->stopSelf(I)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sinpo/tic/h;->onCompletion(Landroid/media/MediaPlayer;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, p1}, Lcom/sinpo/tic/h;->onCompletion(Landroid/media/MediaPlayer;)V

    goto :goto_0
.end method
