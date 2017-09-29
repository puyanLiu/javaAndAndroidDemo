.class public final Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$DeviceFilter;
.super Ljava/lang/Object;
.source "ScanCallback.java"


# instance fields
.field private addrPrefix:Ljava/lang/String;

.field private namePrefix:Ljava/lang/String;

.field private rssiMin:I

.field private service:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$DeviceFilter;->service:Ljava/util/UUID;

    .line 131
    iput-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$DeviceFilter;->addrPrefix:Ljava/lang/String;

    .line 132
    iput-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$DeviceFilter;->namePrefix:Ljava/lang/String;

    .line 133
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$DeviceFilter;->rssiMin:I

    return-void
.end method


# virtual methods
.method public final setAddrPrefix(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 140
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$DeviceFilter;->addrPrefix:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public final setNamePrefix(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$DeviceFilter;->namePrefix:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public final setRSSIMin(I)V
    .locals 0

    .prologue
    .line 148
    iput p1, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$DeviceFilter;->rssiMin:I

    .line 149
    return-void
.end method

.method public final setService(Ljava/util/UUID;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$DeviceFilter;->service:Ljava/util/UUID;

    .line 137
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DeviceFilter [service="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$DeviceFilter;->service:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", addrPrefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$DeviceFilter;->addrPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", namePrefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$DeviceFilter;->namePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", rssiMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$DeviceFilter;->rssiMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
