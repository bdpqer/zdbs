.class public final Lcom/sinpo/tic/Receiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/SharedPreferences;Ljava/lang/String;)I
    .locals 1

    :try_start_0
    const-string v0, ""

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;)V
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sinpo/tic/Receiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 20

    const-string v2, "min"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sinpo/tic/Receiver;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v11

    const-string v2, "r0"

    const-string v3, ""

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sinpo/tic/Receiver;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :try_start_0
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v2, v5

    div-int/lit8 v6, v2, 0x2

    new-array v2, v6, [Lcom/sinpo/tic/r;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-lt v3, v6, :cond_2

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v8, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v8, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xb

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v3, 0xc

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x3b

    invoke-static {v11, v4, v5}, Lcom/sinpo/tic/r;->a(III)Z

    move-result v4

    if-eqz v4, :cond_0

    div-int v4, v6, v11

    add-int/lit8 v4, v4, 0x1

    mul-int v6, v4, v11

    const/16 v4, 0x3c

    if-ge v6, v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-nez v3, :cond_1

    const/4 v6, 0x0

    add-int/lit8 v7, v7, 0x1

    :cond_1
    if-eqz v2, :cond_f

    array-length v3, v2

    if-lez v3, :cond_f

    mul-int/lit8 v3, v7, 0x64

    add-int v13, v3, v6

    const/16 v5, 0x270f

    array-length v14, v2

    const/4 v3, 0x0

    move v9, v3

    :goto_2
    if-lt v9, v14, :cond_4

    :goto_3
    if-eqz v5, :cond_f

    const/16 v2, 0x270f

    if-ne v5, v2, :cond_d

    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_e

    invoke-static {v12}, Lcom/sinpo/tic/Receiver;->b(Landroid/content/Context;)V

    :goto_5
    return-void

    :cond_2
    add-int/lit8 v7, v4, 0x1

    :try_start_1
    aget-object v8, v5, v4

    add-int/lit8 v4, v7, 0x1

    aget-object v7, v5, v7

    new-instance v9, Lcom/sinpo/tic/r;

    invoke-direct {v9, v8, v7}, Lcom/sinpo/tic/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, v2, v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    aget-object v4, v2, v9

    iget v3, v4, Lcom/sinpo/tic/r;->a:I

    iget v10, v4, Lcom/sinpo/tic/r;->b:I

    if-ltz v3, :cond_5

    invoke-static {v13, v3, v10}, Lcom/sinpo/tic/r;->a(III)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    const/4 v3, 0x1

    :goto_6
    if-eqz v3, :cond_8

    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    add-int/lit16 v3, v10, -0x960

    if-ltz v3, :cond_7

    const/4 v10, 0x0

    invoke-static {v13, v10, v3}, Lcom/sinpo/tic/r;->a(III)Z

    move-result v3

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    goto :goto_6

    :cond_8
    iget v15, v4, Lcom/sinpo/tic/r;->a:I

    iget v0, v4, Lcom/sinpo/tic/r;->b:I

    move/from16 v16, v0

    div-int/lit8 v4, v15, 0x64

    rem-int/lit8 v10, v15, 0x64

    const/4 v3, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x3b

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v11, v0, v1}, Lcom/sinpo/tic/r;->a(III)Z

    move-result v17

    if-eqz v17, :cond_11

    rem-int v17, v10, v11

    if-eqz v17, :cond_9

    div-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x1

    mul-int/2addr v10, v11

    :cond_9
    const/16 v17, 0x3c

    move/from16 v0, v17

    if-ge v10, v0, :cond_11

    const/4 v3, 0x1

    move/from16 v19, v3

    move v3, v10

    move/from16 v10, v19

    :goto_7
    if-nez v10, :cond_a

    const/4 v3, 0x0

    add-int/lit8 v4, v4, 0x1

    :cond_a
    mul-int/lit8 v4, v4, 0x64

    add-int/2addr v3, v4

    move/from16 v0, v16

    invoke-static {v3, v15, v0}, Lcom/sinpo/tic/r;->b(III)Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v3, 0x270f

    :cond_b
    :goto_8
    if-le v5, v3, :cond_10

    :goto_9
    add-int/lit8 v4, v9, 0x1

    move v9, v4

    move v5, v3

    goto/16 :goto_2

    :cond_c
    sub-int/2addr v3, v13

    if-gez v3, :cond_b

    add-int/lit16 v3, v3, 0x960

    goto :goto_8

    :cond_d
    add-int v2, v13, v5

    div-int/lit8 v3, v2, 0x64

    rem-int/lit8 v2, v2, 0x64

    :goto_a
    const/16 v4, 0xc

    invoke-virtual {v8, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xb

    rem-int/lit8 v4, v3, 0x18

    invoke-virtual {v8, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x6

    div-int/lit8 v3, v3, 0x18

    invoke-virtual {v8, v2, v3}, Ljava/util/Calendar;->add(II)V

    move-object v2, v8

    goto/16 :goto_4

    :cond_e
    :try_start_2
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v2

    :goto_b
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/sinpo/tic/Activity;

    invoke-direct {v4, v12, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v5, 0x0

    const/high16 v6, 0x10000000

    invoke-static {v12, v5, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-static {v12}, Lcom/sinpo/tic/Receiver;->d(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-static {v12}, Lcom/sinpo/tic/Receiver;->c(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v6

    new-instance v7, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-direct {v7, v2, v3, v4}, Landroid/app/AlarmManager$AlarmClockInfo;-><init>(JLandroid/app/PendingIntent;)V

    invoke-virtual {v6, v7, v5}, Landroid/app/AlarmManager;->setAlarmClock(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V

    goto/16 :goto_5

    :catch_1
    move-exception v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    add-long/2addr v2, v4

    goto :goto_b

    :cond_f
    move v2, v6

    move v3, v7

    goto :goto_a

    :cond_10
    move v3, v5

    goto :goto_9

    :cond_11
    move/from16 v19, v3

    move v3, v10

    move/from16 v10, v19

    goto :goto_7
.end method

.method static a(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/sinpo/tic/Receiver;->c(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v0

    invoke-static {p0}, Lcom/sinpo/tic/Receiver;->d(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private static c(Landroid/content/Context;)Landroid/app/AlarmManager;
    .locals 1

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    return-object v0
.end method

.method private static d(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sinpo/tic/Receiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "t"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v0, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "connected"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v0, "co"

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/sinpo/tic/Receiver;->b(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const-string v0, "bind"

    const-string v6, ""

    invoke-interface {v5, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sinpo/tic/Receiver;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_5

    move-object v0, v4

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    invoke-static {p1}, Lcom/sinpo/tic/Receiver;->b(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    goto :goto_1

    :cond_6
    const-string v0, "t"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    :goto_2
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-gtz v3, :cond_a

    move v0, v2

    :goto_3
    if-nez v0, :cond_8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "t"

    const-class v2, Lcom/sinpo/tic/Service;

    invoke-direct {v0, v1, v4, p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_8
    invoke-static {p1, v5}, Lcom/sinpo/tic/Receiver;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    goto/16 :goto_0

    :cond_9
    const/4 v3, -0x2

    goto :goto_2

    :pswitch_1
    move v0, v1

    goto :goto_3

    :pswitch_2
    move v0, v2

    goto :goto_3

    :cond_a
    const-string v2, "mm"

    invoke-interface {v5, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    goto :goto_3

    :cond_b
    move v0, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
