.class public final Lcom/alipay/android/app/json/JsonWriter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/json/JsonWriter$1;
    }
.end annotation


# instance fields
.field private final a:Ljava/io/Writer;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/json/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonWriter;->b:Ljava/util/List;

    .line 138
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonWriter;->b:Ljava/util/List;

    sget-object v1, Lcom/alipay/android/app/json/a;->EMPTY_DOCUMENT:Lcom/alipay/android/app/json/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    const-string/jumbo v0, ":"

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonWriter;->d:Ljava/lang/String;

    .line 160
    if-nez p1, :cond_0

    .line 161
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    iput-object p1, p0, Lcom/alipay/android/app/json/JsonWriter;->a:Ljava/io/Writer;

    .line 164
    return-void
.end method

.method private a(Lcom/alipay/android/app/json/a;Lcom/alipay/android/app/json/a;Ljava/lang/String;)Lcom/alipay/android/app/json/JsonWriter;
    .locals 3

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonWriter;->a()Lcom/alipay/android/app/json/a;

    move-result-object v0

    .line 265
    if-eq v0, p2, :cond_0

    if-eq v0, p1, :cond_0

    .line 266
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Nesting problem: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/json/JsonWriter;->b:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/json/JsonWriter;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/android/app/json/JsonWriter;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 270
    if-ne v0, p2, :cond_1

    .line 271
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonWriter;->b()V

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonWriter;->a:Ljava/io/Writer;

    invoke-virtual {v0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 274
    return-object p0
.end method

.method private a(Lcom/alipay/android/app/json/a;Ljava/lang/String;)Lcom/alipay/android/app/json/JsonWriter;
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonWriter;->a(Z)V

    .line 253
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonWriter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonWriter;->a:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 255
    return-object p0
.end method

.method private a()Lcom/alipay/android/app/json/a;
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonWriter;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonWriter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/json/a;

    return-object v0
.end method

.method private a(Lcom/alipay/android/app/json/a;)V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonWriter;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonWriter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 289
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 424
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonWriter;->a:Ljava/io/Writer;

    const-string/jumbo v2, "\""

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    .line 426
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 439
    sparse-switch v3, :sswitch_data_0

    .line 472
    const/16 v4, 0x1f

    if-gt v3, v4, :cond_0

    .line 473
    iget-object v4, p0, Lcom/alipay/android/app/json/JsonWriter;->a:Ljava/io/Writer;

    const-string/jumbo v5, "\\u%04x"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 425
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 442
    :sswitch_0
    iget-object v4, p0, Lcom/alipay/android/app/json/JsonWriter;->a:Ljava/io/Writer;

    const/16 v5, 0x5c

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    .line 475
    :cond_0
    iget-object v4, p0, Lcom/alipay/android/app/json/JsonWriter;->a:Ljava/io/Writer;

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 447
    :sswitch_1
    iget-object v3, p0, Lcom/alipay/android/app/json/JsonWriter;->a:Ljava/io/Writer;

    const-string/jumbo v4, "\\t"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 451
    :sswitch_2
    iget-object v3, p0, Lcom/alipay/android/app/json/JsonWriter;->a:Ljava/io/Writer;

    const-string/jumbo v4, "\\b"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 455
    :sswitch_3
    iget-object v3, p0, Lcom/alipay/android/app/json/JsonWriter;->a:Ljava/io/Writer;

    const-string/jumbo v4, "\\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 459
    :sswitch_4
    iget-object v3, p0, Lcom/alipay/android/app/json/JsonWriter;->a:Ljava/io/Writer;

    const-string/jumbo v4, "\\r"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 463
    :sswitch_5
    iget-object v3, p0, Lcom/alipay/android/app/json/JsonWriter;->a:Ljava/io/Writer;

    const-string/jumbo v4, "\\f"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 468
    :sswitch_6
    iget-object v4, p0, Lcom/alipay/android/app/json/JsonWriter;->a:Ljava/io/Writer;

    const-string/jumbo v5, "\\u%04x"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonWriter;->a:Ljava/io/Writer;

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 482
    return-void

    .line 439
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_1
        0xa -> :sswitch_3
        0xc -> :sswitch_5
        0xd -> :sswitch_4
        0x22 -> :sswitch_0
        0x5c -> :sswitch_0
        0x2028 -> :sswitch_6
        0x2029 -> :sswitch_6
    .end sparse-switch
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 520
    sget-object v0, Lcom/alipay/android/app/json/JsonWriter$1;->a:[I

    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonWriter;->a()Lcom/alipay/android/app/json/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/json/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 549
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Nesting problem: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/json/JsonWriter;->b:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :pswitch_0
    iget-boolean v0, p0, Lcom/alipay/android/app/json/JsonWriter;->e:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 523
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JSON must start with an array or an object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_0
    sget-object v0, Lcom/alipay/android/app/json/a;->NONEMPTY_DOCUMENT:Lcom/alipay/android/app/json/a;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonWriter;->a(Lcom/alipay/android/app/json/a;)V

    .line 542
    :goto_0
    return-void

    .line 530
    :pswitch_1
    sget-object v0, Lcom/alipay/android/app/json/a;->NONEMPTY_ARRAY:Lcom/alipay/android/app/json/a;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonWriter;->a(Lcom/alipay/android/app/json/a;)V

    .line 531
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonWriter;->b()V

    goto :goto_0

    .line 535
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonWriter;->a:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 536
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonWriter;->b()V

    goto :goto_0

    .line 540
    :pswitch_3
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonWriter;->a:Ljava/io/Writer;

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonWriter;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 541
    sget-object v0, Lcom/alipay/android/app/json/a;->NONEMPTY_OBJECT:Lcom/alipay/android/app/json/a;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonWriter;->a(Lcom/alipay/android/app/json/a;)V

    goto :goto_0

    .line 545
    :pswitch_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JSON must have only one top-level value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private b()V
    .locals 3

    .prologue
    .line 485
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonWriter;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 493
    :cond_0
    return-void

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonWriter;->a:Ljava/io/Writer;

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 490
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/alipay/android/app/json/JsonWriter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/alipay/android/app/json/JsonWriter;->a:Ljava/io/Writer;

    iget-object v2, p0, Lcom/alipay/android/app/json/JsonWriter;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final beginArray()Lcom/alipay/android/app/json/JsonWriter;
    .locals 2

    .prologue
    .line 215
    sget-object v0, Lcom/alipay/android/app/json/a;->EMPTY_ARRAY:Lcom/alipay/android/app/json/a;

    const-string/jumbo v1, "["

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/app/json/JsonWriter;->a(Lcom/alipay/android/app/json/a;Ljava/lang/String;)Lcom/alipay/android/app/json/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public final beginObject()Lcom/alipay/android/app/json/JsonWriter;
    .locals 2

    .prologue
    .line 234
    sget-object v0, Lcom/alipay/android/app/json/a;->EMPTY_OBJECT:Lcom/alipay/android/app/json/a;

    const-string/jumbo v1, "{"

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/app/json/JsonWriter;->a(Lcom/alipay/android/app/json/a;Ljava/lang/String;)Lcom/alipay/android/app/json/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonWriter;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 418
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonWriter;->a()Lcom/alipay/android/app/json/a;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/json/a;->NONEMPTY_DOCUMENT:Lcom/alipay/android/app/json/a;

    if-eq v0, v1, :cond_0

    .line 419
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_0
    return-void
.end method

.method public final endArray()Lcom/alipay/android/app/json/JsonWriter;
    .locals 3

    .prologue
    .line 224
    sget-object v0, Lcom/alipay/android/app/json/a;->EMPTY_ARRAY:Lcom/alipay/android/app/json/a;

    sget-object v1, Lcom/alipay/android/app/json/a;->NONEMPTY_ARRAY:Lcom/alipay/android/app/json/a;

    const-string/jumbo v2, "]"

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/android/app/json/JsonWriter;->a(Lcom/alipay/android/app/json/a;Lcom/alipay/android/app/json/a;Ljava/lang/String;)Lcom/alipay/android/app/json/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public final endObject()Lcom/alipay/android/app/json/JsonWriter;
    .locals 3

    .prologue
    .line 243
    sget-object v0, Lcom/alipay/android/app/json/a;->EMPTY_OBJECT:Lcom/alipay/android/app/json/a;

    sget-object v1, Lcom/alipay/android/app/json/a;->NONEMPTY_OBJECT:Lcom/alipay/android/app/json/a;

    const-string/jumbo v2, "}"

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/android/app/json/JsonWriter;->a(Lcom/alipay/android/app/json/a;Lcom/alipay/android/app/json/a;Ljava/lang/String;)Lcom/alipay/android/app/json/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonWriter;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 407
    return-void
.end method

.method public final isLenient()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/alipay/android/app/json/JsonWriter;->e:Z

    return v0
.end method

.method public final name(Ljava/lang/String;)Lcom/alipay/android/app/json/JsonWriter;
    .locals 3

    .prologue
    .line 299
    if-nez p1, :cond_0

    .line 300
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonWriter;->a()Lcom/alipay/android/app/json/a;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/json/a;->NONEMPTY_OBJECT:Lcom/alipay/android/app/json/a;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonWriter;->a:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonWriter;->b()V

    sget-object v0, Lcom/alipay/android/app/json/a;->DANGLING_NAME:Lcom/alipay/android/app/json/a;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonWriter;->a(Lcom/alipay/android/app/json/a;)V

    .line 303
    invoke-direct {p0, p1}, Lcom/alipay/android/app/json/JsonWriter;->a(Ljava/lang/String;)V

    .line 304
    return-object p0

    .line 302
    :cond_2
    sget-object v1, Lcom/alipay/android/app/json/a;->EMPTY_OBJECT:Lcom/alipay/android/app/json/a;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Nesting problem: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/json/JsonWriter;->b:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final nullValue()Lcom/alipay/android/app/json/JsonWriter;
    .locals 2

    .prologue
    .line 329
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonWriter;->a(Z)V

    .line 330
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonWriter;->a:Ljava/io/Writer;

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 331
    return-object p0
.end method

.method public final setIndent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 176
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonWriter;->c:Ljava/lang/String;

    .line 178
    const-string/jumbo v0, ":"

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonWriter;->d:Ljava/lang/String;

    .line 183
    :goto_0
    return-void

    .line 180
    :cond_0
    iput-object p1, p0, Lcom/alipay/android/app/json/JsonWriter;->c:Ljava/lang/String;

    .line 181
    const-string/jumbo v0, ": "

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonWriter;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public final setLenient(Z)V
    .locals 0

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/alipay/android/app/json/JsonWriter;->e:Z

    .line 199
    return-void
.end method

.method public final value(D)Lcom/alipay/android/app/json/JsonWriter;
    .locals 3

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/alipay/android/app/json/JsonWriter;->e:Z

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Numeric values must be finite, but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonWriter;->a(Z)V

    .line 360
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonWriter;->a:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 361
    return-object p0
.end method

.method public final value(J)Lcom/alipay/android/app/json/JsonWriter;
    .locals 2

    .prologue
    .line 370
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonWriter;->a(Z)V

    .line 371
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonWriter;->a:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 372
    return-object p0
.end method

.method public final value(Ljava/lang/Number;)Lcom/alipay/android/app/json/JsonWriter;
    .locals 3

    .prologue
    .line 385
    if-nez p1, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/alipay/android/app/json/JsonWriter;->nullValue()Lcom/alipay/android/app/json/JsonWriter;

    move-result-object p0

    .line 398
    :goto_0
    return-object p0

    .line 389
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    iget-boolean v1, p0, Lcom/alipay/android/app/json/JsonWriter;->e:Z

    if-nez v1, :cond_2

    const-string/jumbo v1, "-Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 393
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Numeric values must be finite, but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/alipay/android/app/json/JsonWriter;->a(Z)V

    .line 397
    iget-object v1, p0, Lcom/alipay/android/app/json/JsonWriter;->a:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_0
.end method

.method public final value(Ljava/lang/String;)Lcom/alipay/android/app/json/JsonWriter;
    .locals 1

    .prologue
    .line 315
    if-nez p1, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/alipay/android/app/json/JsonWriter;->nullValue()Lcom/alipay/android/app/json/JsonWriter;

    move-result-object p0

    .line 320
    :goto_0
    return-object p0

    .line 318
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonWriter;->a(Z)V

    .line 319
    invoke-direct {p0, p1}, Lcom/alipay/android/app/json/JsonWriter;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final value(Z)Lcom/alipay/android/app/json/JsonWriter;
    .locals 2

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonWriter;->a(Z)V

    .line 341
    iget-object v1, p0, Lcom/alipay/android/app/json/JsonWriter;->a:Ljava/io/Writer;

    if-eqz p1, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 342
    return-object p0

    .line 341
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method
