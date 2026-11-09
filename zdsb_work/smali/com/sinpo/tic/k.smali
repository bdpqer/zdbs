.class final Lcom/sinpo/tic/k;
.super Landroid/speech/tts/UtteranceProgressListener;

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Ljava/lang/Runnable;


# instance fields
.field a:Landroid/speech/tts/TextToSpeech;

.field b:Landroid/os/ResultReceiver;

.field c:Ljava/lang/String;

.field private d:Landroid/os/Handler;

.field private e:Z

.field private f:I

.field private synthetic g:Lcom/sinpo/tic/Service;


# direct methods
.method constructor <init>(Lcom/sinpo/tic/Service;IZ)V
    .locals 4

    iput-object p1, p0, Lcom/sinpo/tic/k;->g:Lcom/sinpo/tic/Service;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    iput p2, p0, Lcom/sinpo/tic/k;->f:I

    iput-boolean p3, p0, Lcom/sinpo/tic/k;->e:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sinpo/tic/k;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sinpo/tic/k;->d:Landroid/os/Handler;

    if-eqz p3, :cond_0

    const/16 v0, 0x4e20

    :goto_0
    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const v0, 0x493e0

    goto :goto_0
.end method


# virtual methods
.method public final onDone(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "r"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sinpo/tic/k;->b:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sinpo/tic/k;->b:Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    iput-object v3, p0, Lcom/sinpo/tic/k;->b:Landroid/os/ResultReceiver;

    :cond_0
    iget-object v0, p0, Lcom/sinpo/tic/k;->d:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sinpo/tic/k;->g:Lcom/sinpo/tic/Service;

    iget-object v1, p0, Lcom/sinpo/tic/k;->a:Landroid/speech/tts/TextToSpeech;

    iget v2, p0, Lcom/sinpo/tic/k;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/sinpo/tic/Service;->a(Landroid/speech/tts/TextToSpeech;I)V

    iput-object v3, p0, Lcom/sinpo/tic/k;->a:Landroid/speech/tts/TextToSpeech;

    :cond_1
    return-void
.end method

.method public final onError(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sinpo/tic/k;->b:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-boolean v1, p0, Lcom/sinpo/tic/k;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "1"

    const v2, 0x7f07002d

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget-object v1, p0, Lcom/sinpo/tic/k;->b:Landroid/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    iput-object v3, p0, Lcom/sinpo/tic/k;->b:Landroid/os/ResultReceiver;

    :cond_1
    iget-object v0, p0, Lcom/sinpo/tic/k;->d:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sinpo/tic/k;->g:Lcom/sinpo/tic/Service;

    iget-object v1, p0, Lcom/sinpo/tic/k;->a:Landroid/speech/tts/TextToSpeech;

    iget v2, p0, Lcom/sinpo/tic/k;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/sinpo/tic/Service;->a(Landroid/speech/tts/TextToSpeech;I)V

    iput-object v3, p0, Lcom/sinpo/tic/k;->a:Landroid/speech/tts/TextToSpeech;

    return-void
.end method

.method public final onInit(I)V
    .locals 4

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sinpo/tic/k;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    iget-object v0, p0, Lcom/sinpo/tic/k;->g:Lcom/sinpo/tic/Service;

    iget-boolean v1, p0, Lcom/sinpo/tic/k;->e:Z

    iget-object v2, p0, Lcom/sinpo/tic/k;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/sinpo/tic/k;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sinpo/tic/Service;->a(ZLjava/lang/String;Landroid/speech/tts/TextToSpeech;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sinpo/tic/k;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onStart(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStop(Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sinpo/tic/k;->onDone(Ljava/lang/String;)V

    return-void
.end method

.method public final run()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sinpo/tic/k;->onError(Ljava/lang/String;)V

    return-void
.end method
