.class public Lcom/alipay/pushsdk/util/e;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field static a:Lcom/alipay/pushsdk/util/e;

.field private static final c:Ljava/lang/String;


# instance fields
.field public b:[Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m:Ljava/lang/Object;

.field private n:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/alipay/pushsdk/util/e;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/util/e;->c:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/pushsdk/util/e;->a:Lcom/alipay/pushsdk/util/e;

    .line 18
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0xf

    const/4 v8, 0x0

    const/4 v7, 0x3

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/util/e;->j:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/util/e;->k:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/pushsdk/util/e;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/pushsdk/util/e;->m:Ljava/lang/Object;

    .line 77
    const/16 v0, 0x3e

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "0"

    aput-object v1, v0, v8

    const/4 v1, 0x1

    const-string/jumbo v3, "1"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v3, "2"

    aput-object v3, v0, v1

    const-string/jumbo v1, "3"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v3, "4"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v3, "5"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v3, "6"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v3, "7"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v3, "8"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    .line 78
    const-string/jumbo v3, "9"

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v3, "a"

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v3, "b"

    aput-object v3, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v3, "c"

    aput-object v3, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v3, "d"

    aput-object v3, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v3, "e"

    aput-object v3, v0, v1

    const-string/jumbo v1, "f"

    aput-object v1, v0, v6

    const/16 v1, 0x10

    const-string/jumbo v3, "g"

    aput-object v3, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v3, "h"

    aput-object v3, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v3, "i"

    aput-object v3, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v3, "j"

    aput-object v3, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v3, "k"

    aput-object v3, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v3, "l"

    aput-object v3, v0, v1

    const/16 v1, 0x16

    .line 79
    const-string/jumbo v3, "m"

    aput-object v3, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v3, "n"

    aput-object v3, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v3, "o"

    aput-object v3, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v3, "p"

    aput-object v3, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v3, "q"

    aput-object v3, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v3, "r"

    aput-object v3, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v3, "s"

    aput-object v3, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v3, "t"

    aput-object v3, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v3, "u"

    aput-object v3, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v3, "v"

    aput-object v3, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v3, "w"

    aput-object v3, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v3, "x"

    aput-object v3, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v3, "y"

    aput-object v3, v0, v1

    const/16 v1, 0x23

    .line 80
    const-string/jumbo v3, "z"

    aput-object v3, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v3, "A"

    aput-object v3, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v3, "B"

    aput-object v3, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v3, "C"

    aput-object v3, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v3, "D"

    aput-object v3, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v3, "E"

    aput-object v3, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v3, "F"

    aput-object v3, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v3, "G"

    aput-object v3, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v3, "H"

    aput-object v3, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v3, "I"

    aput-object v3, v0, v1

    const/16 v1, 0x2d

    const-string/jumbo v3, "J"

    aput-object v3, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v3, "K"

    aput-object v3, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v3, "L"

    aput-object v3, v0, v1

    const/16 v1, 0x30

    .line 81
    const-string/jumbo v3, "M"

    aput-object v3, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v3, "N"

    aput-object v3, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v3, "O"

    aput-object v3, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v3, "P"

    aput-object v3, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v3, "Q"

    aput-object v3, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v3, "R"

    aput-object v3, v0, v1

    const/16 v1, 0x36

    const-string/jumbo v3, "S"

    aput-object v3, v0, v1

    const/16 v1, 0x37

    const-string/jumbo v3, "T"

    aput-object v3, v0, v1

    const/16 v1, 0x38

    const-string/jumbo v3, "U"

    aput-object v3, v0, v1

    const/16 v1, 0x39

    const-string/jumbo v3, "V"

    aput-object v3, v0, v1

    const/16 v1, 0x3a

    const-string/jumbo v3, "W"

    aput-object v3, v0, v1

    const/16 v1, 0x3b

    const-string/jumbo v3, "X"

    aput-object v3, v0, v1

    const/16 v1, 0x3c

    const-string/jumbo v3, "Y"

    aput-object v3, v0, v1

    const/16 v1, 0x3d

    .line 82
    const-string/jumbo v3, "Z"

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/alipay/pushsdk/util/e;->b:[Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyMMddHHmmssSSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/util/e;->n:Ljava/text/SimpleDateFormat;

    .line 113
    iput-object p1, p0, Lcom/alipay/pushsdk/util/e;->d:Landroid/content/Context;

    .line 115
    iget-object v0, p0, Lcom/alipay/pushsdk/util/e;->d:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/alipay/pushsdk/util/e;->d:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.READ_PHONE_STATE"

    invoke-static {v3, v1}, Lcom/alipay/pushsdk/util/j;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/alipay/pushsdk/util/e;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "origin imei:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/alipay/pushsdk/util/e;->d:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.READ_PHONE_STATE"

    invoke-static {v4, v3}, Lcom/alipay/pushsdk/util/j;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/pushsdk/util/e;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "origin imsi:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v0, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v3, ""

    iget-object v0, p0, Lcom/alipay/pushsdk/util/e;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/i;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/i;

    move-result-object v0

    const-string/jumbo v4, "clientId"

    invoke-virtual {v0, v4}, Lcom/alipay/pushsdk/util/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_12

    :goto_1
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/alipay/pushsdk/util/e;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "saved clientid:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/alipay/pushsdk/util/e;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "client id is valid:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-static {v2}, Lcom/alipay/pushsdk/util/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_5

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_5
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    move-object v3, v2

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0xf

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {v1}, Lcom/alipay/pushsdk/util/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_6

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    move-object v0, v1

    :goto_3
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/alipay/pushsdk/util/e;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "client id is valid:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-direct {p0, v3, v0}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/alipay/pushsdk/util/e;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "normarlize, imsi:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ",imei:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",newClientId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v3, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_4
    iput-object v0, p0, Lcom/alipay/pushsdk/util/e;->e:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/alipay/pushsdk/util/e;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alipay/pushsdk/util/e;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/pushsdk/util/e;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/alipay/pushsdk/util/e;->g:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/alipay/pushsdk/util/e;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alipay/pushsdk/util/e;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/pushsdk/util/e;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xf

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lcom/alipay/pushsdk/util/e;->h:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/alipay/pushsdk/util/e;->d:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/pushsdk/util/e;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ".config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v0, "clientKey"

    const-string/jumbo v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :goto_7
    iput-object v0, p0, Lcom/alipay/pushsdk/util/e;->f:Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/pushsdk/util/f;

    invoke-direct {v1, p0}, Lcom/alipay/pushsdk/util/f;-><init>(Lcom/alipay/pushsdk/util/e;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 120
    return-void

    .line 115
    :cond_9
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/alipay/pushsdk/util/e;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "client is is not valid, imei:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",imsi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v0, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-static {v1}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/alipay/pushsdk/util/e;->e()Ljava/lang/String;

    move-result-object v1

    :cond_b
    invoke-static {v2}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/alipay/pushsdk/util/e;->e()Ljava/lang/String;

    move-result-object v2

    :cond_c
    invoke-direct {p0, v2, v1}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/alipay/pushsdk/util/e;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "normalize, imei:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ",imsi:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",newClientId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v3, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 116
    :cond_d
    const-string/jumbo v0, ""

    goto/16 :goto_5

    .line 117
    :cond_e
    const-string/jumbo v0, ""

    goto/16 :goto_6

    .line 118
    :cond_f
    invoke-direct {p0}, Lcom/alipay/pushsdk/util/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "clientKey"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_7

    :cond_10
    move-object v0, v4

    goto/16 :goto_3

    :cond_11
    move-object v3, v4

    goto/16 :goto_2

    :cond_12
    move-object v0, v3

    goto/16 :goto_1

    :cond_13
    move-object v1, v2

    goto/16 :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;
    .locals 6

    .prologue
    .line 90
    const-class v1, Lcom/alipay/pushsdk/util/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/pushsdk/util/e;->a:Lcom/alipay/pushsdk/util/e;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/alipay/pushsdk/util/e;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/util/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/pushsdk/util/e;->a:Lcom/alipay/pushsdk/util/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 98
    const/4 v3, 0x4

    .line 97
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 99
    sget-object v2, Lcom/alipay/pushsdk/util/e;->a:Lcom/alipay/pushsdk/util/e;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/pushsdk/util/e;->j:Ljava/lang/String;

    .line 100
    sget-object v2, Lcom/alipay/pushsdk/util/e;->a:Lcom/alipay/pushsdk/util/e;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/pushsdk/util/e;->k:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/alipay/pushsdk/util/e;->a:Lcom/alipay/pushsdk/util/e;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    const/4 v2, 0x3

    :try_start_3
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    const/4 v2, 0x3

    sget-object v3, Lcom/alipay/pushsdk/util/e;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getInstance NameNotFoundException="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/alipay/pushsdk/util/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/alipay/pushsdk/util/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/pushsdk/util/e;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/pushsdk/util/e;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/pushsdk/util/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alipay/pushsdk/util/e;->i:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 159
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v0

    .line 163
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 164
    const-string/jumbo v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    const-string/jumbo v2, "[0]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 172
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 176
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/pushsdk/util/e;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/pushsdk/util/e;->d:Landroid/content/Context;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 186
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/pushsdk/util/e;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/pushsdk/util/e;->m:Ljava/lang/Object;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 300
    invoke-static {p0}, Lcom/alipay/pushsdk/util/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    const/4 v0, 0x0

    .line 302
    :goto_0
    return v0

    .line 303
    :cond_0
    const-string/jumbo v0, "[[a-z][A-Z][0-9]]{15}\\|[[a-z][A-Z][0-9]]{15}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 313
    invoke-static {p1}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/alipay/pushsdk/util/e;->e()Ljava/lang/String;

    move-result-object p1

    .line 316
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "123456789012345"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 360
    iget-object v0, p0, Lcom/alipay/pushsdk/util/e;->n:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 361
    return-object v0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x30

    const/4 v1, 0x0

    .line 327
    invoke-static {p0}, Lcom/alipay/pushsdk/util/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    :goto_0
    return-object p0

    .line 329
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move v0, v1

    .line 330
    :goto_1
    array-length v2, v3

    if-lt v0, v2, :cond_1

    .line 334
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 331
    :cond_1
    aget-byte v2, v3, v0

    if-lt v2, v5, :cond_2

    const/16 v4, 0x39

    if-le v2, v4, :cond_6

    :cond_2
    const/16 v4, 0x61

    if-lt v2, v4, :cond_3

    const/16 v4, 0x7a

    if-le v2, v4, :cond_6

    :cond_3
    const/16 v4, 0x41

    if-lt v2, v4, :cond_4

    const/16 v4, 0x5a

    if-le v2, v4, :cond_6

    :cond_4
    move v2, v1

    :goto_2
    if-nez v2, :cond_5

    .line 332
    aput-byte v5, v3, v0

    .line 330
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 331
    :cond_6
    const/4 v2, 0x1

    goto :goto_2
.end method

.method private f()Ljava/lang/String;
    .locals 6

    .prologue
    .line 457
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 458
    iget-object v0, p0, Lcom/alipay/pushsdk/util/e;->b:[Ljava/lang/String;

    array-length v3, v0

    .line 459
    const-string/jumbo v1, ""

    .line 460
    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0xa

    if-lt v0, v4, :cond_0

    .line 464
    return-object v1

    .line 461
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/pushsdk/util/e;->b:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-object v1, v1, v5

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 460
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alipay/pushsdk/util/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/pushsdk/util/e;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alipay/pushsdk/util/e;->j:Ljava/lang/String;

    const-string/jumbo v1, "ctch1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ctch1"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/alipay/pushsdk/util/e;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v1, p0, Lcom/alipay/pushsdk/util/e;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/util/e;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/util/e;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/pushsdk/util/e;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/pushsdk/util/e;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/pushsdk/util/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 420
    :cond_2
    iget-object v0, p0, Lcom/alipay/pushsdk/util/e;->i:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
