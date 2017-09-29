.class public Lcom/j256/ormlite/logger/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final ARG_STRING:Ljava/lang/String; = "{}"

.field private static final ARG_STRING_LENGTH:I

.field private static final UNKNOWN_ARG:Ljava/lang/Object;


# instance fields
.field private final log:Lcom/j256/ormlite/logger/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x2

    sput v0, Lcom/j256/ormlite/logger/Logger;->ARG_STRING_LENGTH:I

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/logger/Log;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/j256/ormlite/logger/Logger;->log:Lcom/j256/ormlite/logger/Log;

    .line 30
    return-void
.end method

.method private appendArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 605
    sget-object v0, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    if-eq p2, v0, :cond_0

    .line 607
    if-nez p2, :cond_1

    .line 609
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 612
    check-cast p2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 614
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private buildFullMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 561
    const/4 v1, 0x0

    move v2, v0

    move v5, v0

    move-object v0, v1

    move v1, v5

    .line 565
    :goto_0
    const-string/jumbo v3, "{}"

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 567
    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 568
    if-nez v0, :cond_0

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 574
    :cond_0
    invoke-virtual {v0, p1, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 576
    sget v2, Lcom/j256/ormlite/logger/Logger;->ARG_STRING_LENGTH:I

    add-int/2addr v2, v3

    .line 578
    if-nez p5, :cond_4

    .line 579
    if-nez v1, :cond_2

    .line 580
    invoke-direct {p0, v0, p2}, Lcom/j256/ormlite/logger/Logger;->appendArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 593
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 564
    goto :goto_0

    .line 581
    :cond_2
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 582
    invoke-direct {p0, v0, p3}, Lcom/j256/ormlite/logger/Logger;->appendArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    goto :goto_1

    .line 583
    :cond_3
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 584
    invoke-direct {p0, v0, p4}, Lcom/j256/ormlite/logger/Logger;->appendArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    goto :goto_1

    .line 588
    :cond_4
    array-length v3, p5

    if-ge v1, v3, :cond_1

    .line 589
    aget-object v3, p5, v1

    invoke-direct {p0, v0, v3}, Lcom/j256/ormlite/logger/Logger;->appendArg(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    goto :goto_1

    .line 595
    :cond_5
    if-nez v0, :cond_6

    .line 600
    :goto_2
    return-object p1

    .line 599
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p1, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method private innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 547
    iget-object v0, p0, Lcom/j256/ormlite/logger/Logger;->log:Lcom/j256/ormlite/logger/Log;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/logger/Log;->isLevelEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 548
    invoke-direct/range {v0 .. v5}, Lcom/j256/ormlite/logger/Logger;->buildFullMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 549
    if-nez p2, :cond_1

    .line 550
    iget-object v1, p0, Lcom/j256/ormlite/logger/Logger;->log:Lcom/j256/ormlite/logger/Log;

    invoke-interface {v1, p1, v0}, Lcom/j256/ormlite/logger/Log;->log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;)V

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    iget-object v1, p0, Lcom/j256/ormlite/logger/Logger;->log:Lcom/j256/ormlite/logger/Log;

    invoke-interface {v1, p1, v0, p2}, Lcom/j256/ormlite/logger/Log;->log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 121
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 128
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 135
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 142
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 153
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v2, 0x0

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 154
    return-void
.end method

.method public debug(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 160
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method public debug(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 167
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 168
    return-void
.end method

.method public debug(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 174
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 175
    return-void
.end method

.method public debug(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 181
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method public debug(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 192
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 193
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 339
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 340
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 346
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 347
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 353
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 354
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 360
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 361
    return-void
.end method

.method public error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 367
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v2, 0x0

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 368
    return-void
.end method

.method public error(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 374
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 375
    return-void
.end method

.method public error(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 381
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 382
    return-void
.end method

.method public error(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 388
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 389
    return-void
.end method

.method public error(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 395
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 396
    return-void
.end method

.method public error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 402
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 403
    return-void
.end method

.method public fatal(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 409
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 410
    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 416
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 417
    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 423
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 424
    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 430
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 431
    return-void
.end method

.method public fatal(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 437
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v2, 0x0

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 438
    return-void
.end method

.method public fatal(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 444
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 445
    return-void
.end method

.method public fatal(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 451
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 452
    return-void
.end method

.method public fatal(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 458
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 459
    return-void
.end method

.method public fatal(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 465
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 466
    return-void
.end method

.method public fatal(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 472
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 473
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 199
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 200
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 206
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 207
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 213
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 214
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 220
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 221
    return-void
.end method

.method public info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 227
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v2, 0x0

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 228
    return-void
.end method

.method public info(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 234
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 235
    return-void
.end method

.method public info(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 241
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 242
    return-void
.end method

.method public info(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 248
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 249
    return-void
.end method

.method public info(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 255
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 256
    return-void
.end method

.method public info(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 262
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 263
    return-void
.end method

.method public isLevelEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/j256/ormlite/logger/Logger;->log:Lcom/j256/ormlite/logger/Log;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/logger/Log;->isLevelEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z

    move-result v0

    return v0
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 479
    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 480
    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 486
    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 487
    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 493
    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 494
    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 500
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 501
    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 507
    const/4 v2, 0x0

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 508
    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 514
    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 515
    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 521
    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 522
    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 528
    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 529
    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 535
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 536
    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 542
    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 543
    return-void
.end method

.method public trace(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 43
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 50
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 57
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 64
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 75
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v2, 0x0

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public trace(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 82
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public trace(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 89
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public trace(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 96
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public trace(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 103
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public trace(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 114
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 269
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 270
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 276
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 277
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 283
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 284
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 290
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 291
    return-void
.end method

.method public warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 297
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v2, 0x0

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 298
    return-void
.end method

.method public warn(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 304
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 305
    return-void
.end method

.method public warn(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 311
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 312
    return-void
.end method

.method public warn(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 318
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 319
    return-void
.end method

.method public warn(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 325
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 326
    return-void
.end method

.method public warn(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 332
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->UNKNOWN_ARG:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->innerLog(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 333
    return-void
.end method
