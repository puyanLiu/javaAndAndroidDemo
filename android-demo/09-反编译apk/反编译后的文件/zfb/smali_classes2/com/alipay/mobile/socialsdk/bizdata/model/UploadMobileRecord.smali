.class public Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;
.super Ljava/lang/Object;
.source "UploadMobileRecord.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    daoClass = Lcom/alipay/mobile/socialsdk/bizdata/db/UploadMobileDatabaseDaoImpl;
.end annotation


# instance fields
.field public memo:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public mobile:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public orderNum:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public rId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        id = true
        useGetSet = true
    .end annotation
.end field

.field public remove:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    if-ne p0, p1, :cond_0

    move v0, v1

    .line 67
    :goto_0
    return v0

    .line 57
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    .line 58
    goto :goto_0

    .line 61
    :cond_1
    instance-of v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;->name:Ljava/lang/String;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;->name:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;->mobile:Ljava/lang/String;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;->mobile:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 63
    check-cast p1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;->mobile:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    .line 67
    :cond_3
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getRId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;->mobile:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;->rId:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;->rId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 73
    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    .line 75
    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    .line 78
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;->mobile:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 77
    :goto_1
    add-int/2addr v0, v1

    .line 79
    return v0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;->mobile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setRId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;->rId:Ljava/lang/String;

    .line 49
    return-void
.end method
