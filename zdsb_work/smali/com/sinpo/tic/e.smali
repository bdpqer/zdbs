.class final Lcom/sinpo/tic/e;
.super Landroid/os/ResultReceiver;


# instance fields
.field private final a:Lcom/sinpo/tic/f;

.field private final b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/sinpo/tic/f;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/sinpo/tic/e;->a:Lcom/sinpo/tic/f;

    iput-object p2, p0, Lcom/sinpo/tic/e;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/sinpo/tic/e;->a:Lcom/sinpo/tic/f;

    iget-object v1, p0, Lcom/sinpo/tic/e;->b:Ljava/lang/Object;

    invoke-interface {v0, p2, v1}, Lcom/sinpo/tic/f;->a(Landroid/os/Bundle;Ljava/lang/Object;)V

    return-void
.end method
