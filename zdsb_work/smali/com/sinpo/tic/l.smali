.class final Lcom/sinpo/tic/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/sinpo/tic/TTSEnginePref;


# direct methods
.method constructor <init>(Lcom/sinpo/tic/TTSEnginePref;)V
    .locals 0

    iput-object p1, p0, Lcom/sinpo/tic/l;->a:Lcom/sinpo/tic/TTSEnginePref;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/sinpo/tic/l;->a:Lcom/sinpo/tic/TTSEnginePref;

    invoke-static {v0, p2}, Lcom/sinpo/tic/TTSEnginePref;->a(Lcom/sinpo/tic/TTSEnginePref;I)V

    iget-object v0, p0, Lcom/sinpo/tic/l;->a:Lcom/sinpo/tic/TTSEnginePref;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/sinpo/tic/TTSEnginePref;->onClick(Landroid/content/DialogInterface;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
