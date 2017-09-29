.class public Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;
.super Ljava/lang/Object;
.source "UploadMobileRecordVt.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    daoClass = Lcom/alipay/mobile/socialsdk/bizdata/db/UploadMobileVtDatabaseDaoImpl;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x718a5383adb0b1caL


# instance fields
.field public memo:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public mobile:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public order:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
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
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;->mobile:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->mobile:Ljava/lang/String;

    .line 87
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->name:Ljava/lang/String;

    .line 88
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;->memo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->memo:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->order:I

    .line 90
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    if-ne p0, p1, :cond_0

    move v0, v1

    .line 70
    :goto_0
    return v0

    .line 60
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    .line 61
    goto :goto_0

    .line 64
    :cond_1
    instance-of v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->name:Ljava/lang/String;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;->name:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->mobile:Ljava/lang/String;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;->mobile:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 66
    check-cast p1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->mobile:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    .line 70
    :cond_3
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getRId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->mobile:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->rId:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->rId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 79
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->mobile:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 80
    return v0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->mobile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setRId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->rId:Ljava/lang/String;

    .line 52
    return-void
.end method
