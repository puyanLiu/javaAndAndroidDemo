.class public Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;
.super Ljava/lang/Object;
.source "DiskFormatter.java"


# static fields
.field public static final B:Ljava/lang/String; = "B"

.field public static final FORMAT:Ljava/lang/String; = "#.00"

.field public static final GB:Ljava/lang/String; = "G"

.field public static final KB:Ljava/lang/String; = "K"

.field public static final MB:Ljava/lang/String; = "M"

.field public static final TB:Ljava/lang/String; = "T"

.field public static final UNIT:I = 0x400


# instance fields
.field private format:Ljava/lang/String;

.field private gbUnit:D

.field private kbUnit:D

.field private mbUnit:D

.field private tbUnit:D

.field private unit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string/jumbo v0, "#.00"

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;->format:Ljava/lang/String;

    .line 26
    const/16 v0, 0x400

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;->unit:I

    .line 29
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;->calUnits()V

    .line 30
    return-void
.end method

.method private calUnits()V
    .locals 4

    .prologue
    .line 40
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;->unit:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;->kbUnit:D

    .line 41
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;->unit:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;->kbUnit:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;->mbUnit:D

    .line 42
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;->unit:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;->mbUnit:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;->gbUnit:D

    .line 43
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;->unit:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;->gbUnit:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;->tbUnit:D

    .line 44
    return-void
.end method

.method private division(DD)Ljava/lang/String;
    .locals 4

    .prologue
    .line 68
    div-double v0, p1, p3

    .line 69
    new-instance v2, Ljava/text/DecimalFormat;

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;->format:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 71
    return-object v0
.end method


# virtual methods
.method public format(D)Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    .line 54
    :cond_0
    iget-wide v0, p0, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;->kbUnit:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_1
    iget-wide v0, p0, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;->mbUnit:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;->kbUnit:D

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;->division(DD)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_2
    iget-wide v0, p0, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;->gbUnit:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;->mbUnit:D

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;->division(DD)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_3
    iget-wide v0, p0, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;->tbUnit:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_4

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;->gbUnit:D

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;->division(DD)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "GB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;->tbUnit:D

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;->division(DD)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "TB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;->format:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setUnit(I)V
    .locals 0

    .prologue
    .line 33
    if-lez p1, :cond_0

    .line 34
    iput p1, p0, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;->unit:I

    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/util/DiskFormatter;->calUnits()V

    .line 37
    :cond_0
    return-void
.end method
