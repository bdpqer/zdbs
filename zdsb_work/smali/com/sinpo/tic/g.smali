.class final Lcom/sinpo/tic/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/sinpo/tic/RingtonePref;


# direct methods
.method constructor <init>(Lcom/sinpo/tic/RingtonePref;)V
    .locals 0

    iput-object p1, p0, Lcom/sinpo/tic/g;->a:Lcom/sinpo/tic/RingtonePref;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/sinpo/tic/g;->a:Lcom/sinpo/tic/RingtonePref;

    iget-object v1, p0, Lcom/sinpo/tic/g;->a:Lcom/sinpo/tic/RingtonePref;

    invoke-static {v1, p2}, Lcom/sinpo/tic/RingtonePref;->a(Lcom/sinpo/tic/RingtonePref;I)V

    invoke-virtual {v0, p2}, Lcom/sinpo/tic/RingtonePref;->a(I)V

    return-void
.end method
