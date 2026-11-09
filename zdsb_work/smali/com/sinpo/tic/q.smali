.class public final Lcom/sinpo/tic/q;
.super Landroid/preference/PreferenceFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/LinkedList;)V
    .locals 1

    const-string v0, ""

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sinpo/tic/r;->a(Ljava/lang/String;)Lcom/sinpo/tic/r;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sinpo/tic/q;->setRetainInstance(Z)V

    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/sinpo/tic/q;->addPreferencesFromResource(I)V

    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    invoke-virtual {p0}, Lcom/sinpo/tic/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f070012

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    return-void
.end method

.method public final onStop()V
    .locals 5

    invoke-virtual {p0}, Lcom/sinpo/tic/q;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const-string v2, "r1"

    invoke-static {v0, v2, v1}, Lcom/sinpo/tic/q;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/LinkedList;)V

    const-string v2, "r2"

    invoke-static {v0, v2, v1}, Lcom/sinpo/tic/q;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/LinkedList;)V

    const-string v2, "r3"

    invoke-static {v0, v2, v1}, Lcom/sinpo/tic/q;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/LinkedList;)V

    invoke-static {v1}, Lcom/sinpo/tic/r;->b(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/sinpo/tic/r;->a(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "r0"

    const-string v4, "-"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "tm"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "r0"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sinpo/tic/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sinpo/tic/Receiver;->a(Landroid/content/Context;)V

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    return-void
.end method
