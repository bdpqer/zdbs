.class final Lcom/sinpo/tic/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/sinpo/tic/TTSLanguagePref;


# direct methods
.method constructor <init>(Lcom/sinpo/tic/TTSLanguagePref;)V
    .locals 0

    iput-object p1, p0, Lcom/sinpo/tic/n;->a:Lcom/sinpo/tic/TTSLanguagePref;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/sinpo/tic/n;->a:Lcom/sinpo/tic/TTSLanguagePref;

    invoke-static {v0, p2}, Lcom/sinpo/tic/TTSLanguagePref;->a(Lcom/sinpo/tic/TTSLanguagePref;I)V

    iget-object v0, p0, Lcom/sinpo/tic/n;->a:Lcom/sinpo/tic/TTSLanguagePref;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/sinpo/tic/TTSLanguagePref;->onClick(Landroid/content/DialogInterface;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
