.class public final Lcom/sinpo/tic/WidgetCfg;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0007

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x7f0b0000

    invoke-virtual {p0, v0}, Lcom/sinpo/tic/WidgetCfg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const v0, 0x7f0b0005

    invoke-virtual {p0, v0}, Lcom/sinpo/tic/WidgetCfg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "wl"

    invoke-static {v1, v0}, Lcom/sinpo/tic/Widget;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sinpo/tic/Widget;->a(Landroid/content/Context;Z)V

    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "appWidgetId"

    iget v3, p0, Lcom/sinpo/tic/WidgetCfg;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sinpo/tic/WidgetCfg;->setResult(ILandroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sinpo/tic/WidgetCfg;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/sinpo/tic/WidgetCfg;->setResult(I)V

    const/high16 v0, 0x7f040000

    invoke-virtual {p0, v0}, Lcom/sinpo/tic/WidgetCfg;->setContentView(I)V

    invoke-virtual {p0}, Lcom/sinpo/tic/WidgetCfg;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput v2, p0, Lcom/sinpo/tic/WidgetCfg;->a:I

    if-eqz v0, :cond_0

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sinpo/tic/WidgetCfg;->a:I

    :cond_0
    iget v0, p0, Lcom/sinpo/tic/WidgetCfg;->a:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sinpo/tic/WidgetCfg;->finish()V

    :cond_1
    invoke-virtual {p0}, Lcom/sinpo/tic/WidgetCfg;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "wl"

    invoke-static {v1}, Lcom/sinpo/tic/Widget;->a(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v0, 0x7f0b0000

    invoke-virtual {p0, v0}, Lcom/sinpo/tic/WidgetCfg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-static {v2}, Lcom/sinpo/tic/Widget;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->check(I)V

    const v0, 0x7f0b0005

    invoke-virtual {p0, v0}, Lcom/sinpo/tic/WidgetCfg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/sinpo/tic/Widget;->a(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0007

    invoke-virtual {p0, v0}, Lcom/sinpo/tic/WidgetCfg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0006

    invoke-virtual {p0, v0}, Lcom/sinpo/tic/WidgetCfg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
