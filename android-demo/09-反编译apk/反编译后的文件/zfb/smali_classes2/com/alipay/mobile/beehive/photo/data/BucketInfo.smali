.class public Lcom/alipay/mobile/beehive/photo/data/BucketInfo;
.super Ljava/lang/Object;
.source "BucketInfo.java"


# instance fields
.field public allPhoto:Z

.field private count:I

.field private coverPhoto:Lcom/alipay/mobile/beehive/service/PhotoInfo;

.field private name:Ljava/lang/String;

.field private selected:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/alipay/mobile/beehive/service/PhotoInfo;)V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;-><init>(Ljava/lang/String;ILcom/alipay/mobile/beehive/service/PhotoInfo;Z)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/alipay/mobile/beehive/service/PhotoInfo;Z)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;->name:Ljava/lang/String;

    .line 27
    iput p2, p0, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;->count:I

    .line 29
    iput-object p3, p0, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;->coverPhoto:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 30
    iput-boolean p4, p0, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;->selected:Z

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;->count:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoto()Lcom/alipay/mobile/beehive/service/PhotoInfo;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;->coverPhoto:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    return-object v0
.end method

.method public increaseCount()V
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;->count:I

    .line 67
    return-void
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;->selected:Z

    return v0
.end method

.method public setCount(I)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;->count:I

    .line 47
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;->name:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setPhoto(Lcom/alipay/mobile/beehive/service/PhotoInfo;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;->coverPhoto:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 55
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/photo/data/BucketInfo;->selected:Z

    .line 63
    return-void
.end method
