.class public final Lcom/sinpo/tic/Widget;
.super Landroid/appwidget/AppWidgetProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)I
    .locals 2

    const v0, 0x7f0b0002

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    packed-switch v1, :pswitch_data_0

    const v0, 0x7f0b0004

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0b0001

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0b0003

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/widget/RemoteViews;
    .locals 11

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v7, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "appWidgetMaxWidth"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "appWidgetMinHeight"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    const/4 v2, 0x1

    int-to-float v1, v1

    mul-float/2addr v1, v7

    float-to-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/4 v1, 0x1

    int-to-float v0, v0

    mul-float/2addr v0, v7

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "wl"

    invoke-static {v6}, Lcom/sinpo/tic/Widget;->a(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const-string v1, "co"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f020002

    :goto_1
    const/4 v1, 0x0

    aget-object v1, v10, v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v2, 0x1

    const/4 v1, 0x1

    move v5, v1

    move v1, v2

    :goto_2
    const/4 v2, 0x1

    :try_start_0
    aget-object v2, v10, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    aget-object v2, v10, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    :goto_3
    if-eqz v1, :cond_5

    const/4 v1, 0x3

    aget-object v1, v10, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    :goto_4
    const/4 v1, 0x4

    aget-object v1, v10, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_5
    const/high16 v10, 0x41a00000    # 20.0f

    invoke-static {v4, v10}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v4, v7

    float-to-int v4, v4

    mul-float/2addr v2, v7

    float-to-int v10, v2

    if-nez v10, :cond_6

    const/4 v2, 0x0

    :goto_6
    mul-float/2addr v1, v7

    float-to-int v3, v1

    if-eqz v5, :cond_7

    sub-int v1, v9, v4

    sub-int/2addr v1, v2

    sub-int/2addr v1, v10

    div-int/lit8 v1, v1, 0x2

    :goto_7
    const/4 v5, 0x0

    add-int/2addr v1, v3

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v9, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v7, 0x0

    sub-int v9, v8, v4

    div-int/lit8 v9, v9, 0x2

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v9, v7

    int-to-float v1, v1

    invoke-virtual {v5, v9, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v0, v7

    int-to-float v0, v0

    add-int v1, v4, v2

    int-to-float v1, v1

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    if-lez v10, :cond_1

    const/high16 v0, 0x7f070000

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, -0x1

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v7, -0x23000000

    invoke-virtual {v6, v0, v1, v2, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const-string v0, "sans-serif-condensed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v0, 0x40000000    # 2.0f

    move v2, v1

    :goto_8
    sub-float v1, v2, v0

    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v7

    if-gtz v1, :cond_8

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    const/4 v0, 0x0

    :goto_9
    int-to-float v2, v8

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_a

    :cond_0
    const/4 v0, 0x0

    float-to-int v1, v1

    sub-int v1, v8, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v5, v4, v0, v1, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "c"

    const/4 v2, 0x0

    const-class v4, Lcom/sinpo/tic/WidgetSrv;

    invoke-direct {v0, v1, v2, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f040006

    invoke-direct {v1, v2, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const/high16 v2, 0x7f0b0000

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const/high16 v2, 0x7f0b0000

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v1

    :cond_2
    const-string v0, "appWidgetMinWidth"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "appWidgetMaxHeight"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :cond_3
    const v0, 0x7f020001

    goto/16 :goto_1

    :pswitch_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    move v5, v1

    move v1, v2

    goto/16 :goto_2

    :pswitch_1
    const/4 v2, 0x0

    const/4 v1, 0x1

    move v5, v1

    move v1, v2

    goto/16 :goto_2

    :pswitch_2
    const/4 v2, 0x1

    const/4 v1, 0x0

    move v5, v1

    move v1, v2

    goto/16 :goto_2

    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_4

    :catch_0
    move-exception v1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    goto/16 :goto_5

    :cond_6
    mul-float v2, v3, v7

    float-to-int v2, v2

    goto/16 :goto_6

    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_7

    :cond_8
    add-float v1, v2, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v1, v7

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    sub-float/2addr v7, v9

    int-to-float v9, v10

    cmpl-float v7, v7, v9

    if-ltz v7, :cond_9

    move v2, v1

    goto/16 :goto_8

    :cond_9
    move v0, v1

    goto/16 :goto_8

    :cond_a
    const v1, -0x43dc28f6    # -0.01f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "3,"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "0,"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-string v0, "1,"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const-string v0, "2,"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0001
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static a(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "1,56,8,14,0"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "1,48,8,14,0"

    goto :goto_0
.end method

.method static a(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/sinpo/tic/Widget;->a(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Z)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "u"

    const/4 v2, 0x0

    const-class v3, Lcom/sinpo/tic/Widget;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/sinpo/tic/Receiver;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 1

    invoke-static {p1, p3, p4}, Lcom/sinpo/tic/Widget;->a(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "u"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sinpo/tic/Widget;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4

    array-length v1, p3

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget v2, p3, v0

    invoke-virtual {p2, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/sinpo/tic/Widget;->a(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
