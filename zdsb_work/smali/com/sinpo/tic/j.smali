.class final Lcom/sinpo/tic/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field a:Landroid/speech/tts/TextToSpeech;

.field b:Landroid/os/ResultReceiver;

.field c:I

.field private synthetic d:Lcom/sinpo/tic/Service;


# direct methods
.method private constructor <init>(Lcom/sinpo/tic/Service;)V
    .locals 0

    iput-object p1, p0, Lcom/sinpo/tic/j;->d:Lcom/sinpo/tic/Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sinpo/tic/Service;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sinpo/tic/j;-><init>(Lcom/sinpo/tic/Service;)V

    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sinpo/tic/j;->d:Lcom/sinpo/tic/Service;

    iget-object v1, p0, Lcom/sinpo/tic/j;->b:Landroid/os/ResultReceiver;

    iget-object v2, p0, Lcom/sinpo/tic/j;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, v1, v2}, Lcom/sinpo/tic/Service;->b(Landroid/os/ResultReceiver;Landroid/speech/tts/TextToSpeech;)V

    :goto_0
    iget-object v0, p0, Lcom/sinpo/tic/j;->d:Lcom/sinpo/tic/Service;

    iget-object v1, p0, Lcom/sinpo/tic/j;->a:Landroid/speech/tts/TextToSpeech;

    iget v2, p0, Lcom/sinpo/tic/j;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/sinpo/tic/Service;->a(Landroid/speech/tts/TextToSpeech;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sinpo/tic/j;->d:Lcom/sinpo/tic/Service;

    iget-object v1, p0, Lcom/sinpo/tic/j;->b:Landroid/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sinpo/tic/Service;->b(Landroid/os/ResultReceiver;Landroid/speech/tts/TextToSpeech;)V

    goto :goto_0
.end method
