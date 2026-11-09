.class final Lcom/sinpo/tic/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/sinpo/tic/VolumePref;


# direct methods
.method constructor <init>(Lcom/sinpo/tic/VolumePref;)V
    .locals 0

    iput-object p1, p0, Lcom/sinpo/tic/s;->a:Lcom/sinpo/tic/VolumePref;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/sinpo/tic/s;->a:Lcom/sinpo/tic/VolumePref;

    iget-object v1, p0, Lcom/sinpo/tic/s;->a:Lcom/sinpo/tic/VolumePref;

    invoke-static {v1, p2}, Lcom/sinpo/tic/VolumePref;->a(Lcom/sinpo/tic/VolumePref;I)V

    invoke-virtual {v0}, Lcom/sinpo/tic/VolumePref;->a()V

    return-void
.end method
