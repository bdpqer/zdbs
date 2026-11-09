.class final Lcom/sinpo/tic/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/sinpo/tic/IntvPref;


# direct methods
.method constructor <init>(Lcom/sinpo/tic/IntvPref;)V
    .locals 0

    iput-object p1, p0, Lcom/sinpo/tic/a;->a:Lcom/sinpo/tic/IntvPref;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/sinpo/tic/a;->a:Lcom/sinpo/tic/IntvPref;

    invoke-static {v0, p2}, Lcom/sinpo/tic/IntvPref;->a(Lcom/sinpo/tic/IntvPref;I)V

    iget-object v0, p0, Lcom/sinpo/tic/a;->a:Lcom/sinpo/tic/IntvPref;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/sinpo/tic/IntvPref;->onClick(Landroid/content/DialogInterface;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
