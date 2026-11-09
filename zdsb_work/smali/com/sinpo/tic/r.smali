.class final Lcom/sinpo/tic/r;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/sinpo/tic/r;->a(II)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sinpo/tic/r;->a(II)V

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/sinpo/tic/r;
    .locals 4

    :try_start_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    new-instance v0, Lcom/sinpo/tic/r;

    invoke-direct {v0, v1, v2}, Lcom/sinpo/tic/r;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Ljava/util/LinkedList;)Ljava/lang/String;
    .locals 12

    const/16 v10, 0x2c

    const/16 v9, 0x960

    const/4 v5, -0x1

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sinpo/tic/r;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, v0, Lcom/sinpo/tic/r;->a:I

    if-gez v1, :cond_c

    invoke-virtual {v6}, Ljava/util/LinkedList;->clear()V

    goto :goto_1

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sinpo/tic/r;

    iget v3, v0, Lcom/sinpo/tic/r;->a:I

    iget v2, v0, Lcom/sinpo/tic/r;->b:I

    iget v4, v1, Lcom/sinpo/tic/r;->a:I

    iget v1, v1, Lcom/sinpo/tic/r;->b:I

    if-ltz v3, :cond_3

    if-gez v4, :cond_5

    :cond_3
    move v1, v2

    move v2, v5

    :goto_4
    if-ltz v2, :cond_4

    sub-int v3, v1, v2

    if-lt v3, v9, :cond_b

    :cond_4
    iput v5, v0, Lcom/sinpo/tic/r;->a:I

    iput v5, v0, Lcom/sinpo/tic/r;->b:I

    :goto_5
    const/4 v1, 0x1

    :goto_6
    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_5
    invoke-static {v4, v3, v2}, Lcom/sinpo/tic/r;->a(III)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v2, v3

    goto :goto_4

    :cond_6
    invoke-static {v1, v3, v2}, Lcom/sinpo/tic/r;->a(III)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v11, v2

    move v2, v1

    move v1, v11

    goto :goto_4

    :cond_7
    invoke-static {v3, v4, v1}, Lcom/sinpo/tic/r;->a(III)Z

    move-result v8

    if-eqz v8, :cond_8

    move v2, v4

    goto :goto_4

    :cond_8
    if-lt v2, v9, :cond_9

    add-int/lit16 v2, v2, -0x960

    if-lt v2, v4, :cond_a

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit16 v1, v1, 0x960

    move v2, v3

    goto :goto_4

    :cond_9
    if-lt v1, v9, :cond_a

    add-int/lit16 v1, v1, -0x960

    if-lt v1, v3, :cond_a

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit16 v1, v1, 0x960

    move v2, v4

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    goto :goto_6

    :cond_b
    iput v2, v0, Lcom/sinpo/tic/r;->a:I

    iput v1, v0, Lcom/sinpo/tic/r;->b:I

    goto :goto_5

    :cond_c
    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sinpo/tic/r;

    iget v3, v0, Lcom/sinpo/tic/r;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lcom/sinpo/tic/r;->b:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method private a(II)V
    .locals 4

    const/16 v3, 0x937

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-eq p1, p2, :cond_0

    invoke-static {p1, v2, v3}, Lcom/sinpo/tic/r;->b(III)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/sinpo/tic/r;->b(III)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iput v0, p0, Lcom/sinpo/tic/r;->a:I

    move p2, v0

    :cond_1
    :goto_0
    iput p2, p0, Lcom/sinpo/tic/r;->b:I

    return-void

    :cond_2
    iput p1, p0, Lcom/sinpo/tic/r;->a:I

    if-lt p1, p2, :cond_1

    add-int/lit16 p2, p2, 0x960

    goto :goto_0
.end method

.method static a(III)Z
    .locals 1

    if-lt p0, p1, :cond_0

    if-gt p0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Ljava/util/LinkedList;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_1
    return-object v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sinpo/tic/r;

    invoke-virtual {v0}, Lcom/sinpo/tic/r;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static b(III)Z
    .locals 1

    if-lt p0, p1, :cond_0

    if-gt p0, p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/sinpo/tic/r;->a:I

    if-gez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lcom/sinpo/tic/r;->b:I

    rem-int/lit16 v1, v1, 0x960

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%d:%02d-%d:%02d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    div-int/lit8 v6, v0, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    rem-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x2

    div-int/lit8 v5, v1, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x3

    rem-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
