.class public final Lcom/sinpo/tic/WidgetSrv;
.super Landroid/app/Service;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:J

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onCreate()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sinpo/tic/WidgetSrv;->a:Landroid/os/Handler;

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    iget-object v0, p0, Lcom/sinpo/tic/WidgetSrv;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_2

    const-string v0, "c"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sinpo/tic/WidgetSrv;->b:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/sinpo/tic/WidgetSrv;->b:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x118

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    iput-wide v0, p0, Lcom/sinpo/tic/WidgetSrv;->b:J

    iget-object v0, p0, Lcom/sinpo/tic/WidgetSrv;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput p3, p0, Lcom/sinpo/tic/WidgetSrv;->c:I

    :goto_0
    const/4 v0, 0x2

    return v0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sinpo/tic/WidgetSrv;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sinpo/tic/Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sinpo/tic/WidgetSrv;->startActivity(Landroid/content/Intent;)V

    :cond_2
    invoke-virtual {p0, p3}, Lcom/sinpo/tic/WidgetSrv;->stopSelf(I)V

    goto :goto_0
.end method

.method public final run()V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "co"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "co"

    if-eqz v3, :cond_0

    :goto_0
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {p0, v1}, Lcom/sinpo/tic/Widget;->a(Landroid/content/Context;Z)V

    iget v0, p0, Lcom/sinpo/tic/WidgetSrv;->c:I

    invoke-virtual {p0, v0}, Lcom/sinpo/tic/WidgetSrv;->stopSelf(I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
