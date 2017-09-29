.class public Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;
.super Ljava/lang/Object;
.source "PhotoMark.java"


# instance fields
.field private markHeight:I

.field private markId:Ljava/lang/String;

.field private markWidth:I

.field private paddingX:I

.field private paddingY:I

.field private percent:Ljava/lang/Integer;

.field private position:I

.field private transparency:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;->markId:Ljava/lang/String;

    .line 76
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;->markId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;->position:I

    return v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;->transparency:I

    return v0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;->markWidth:I

    return v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;->markHeight:I

    return v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;)I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;->paddingX:I

    return v0
.end method

.method static synthetic access$6(Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;)I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;->paddingY:I

    return v0
.end method

.method static synthetic access$7(Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;->percent:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/alipay/mobile/beehive/photo/data/PhotoMark;
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/photo/data/PhotoMark;-><init>(Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;)V

    return-object v0
.end method

.method public markHeight(I)Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;->markHeight:I

    .line 100
    return-object p0
.end method

.method public markId(Ljava/lang/String;)Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;->markId:Ljava/lang/String;

    .line 80
    return-object p0
.end method

.method public markWidth(I)Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;->markWidth:I

    .line 95
    return-object p0
.end method

.method public paddingX(I)Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;
    .locals 0

    .prologue
    .line 104
    iput p1, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;->paddingX:I

    .line 105
    return-object p0
.end method

.method public paddingY(I)Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;
    .locals 0

    .prologue
    .line 109
    iput p1, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;->paddingY:I

    .line 110
    return-object p0
.end method

.method public percent(I)Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;
    .locals 1

    .prologue
    .line 117
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;->percent:Ljava/lang/Integer;

    .line 118
    return-object p0
.end method

.method public percent(Ljava/lang/Integer;)Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;->percent:Ljava/lang/Integer;

    .line 114
    return-object p0
.end method

.method public position(I)Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;->position:I

    .line 85
    return-object p0
.end method

.method public transparency(I)Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoMark$Builder;->transparency:I

    .line 90
    return-object p0
.end method
