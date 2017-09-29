.class Lcom/alipay/mobile/common/transportext/Transport$DftNotepad;
.super Ljava/lang/Object;
.source "Transport.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/amnet/Notepad;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/Transport;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/transportext/Transport;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/Transport$DftNotepad;->this$0:Lcom/alipay/mobile/common/transportext/Transport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transportext/Transport;Lcom/alipay/mobile/common/transportext/Transport$1;)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/Transport$DftNotepad;-><init>(Lcom/alipay/mobile/common/transportext/Transport;)V

    return-void
.end method


# virtual methods
.method public print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 209
    const/4 v0, 0x2

    .line 210
    const-string/jumbo v1, "DEBUG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 211
    const/4 v0, 0x3

    .line 222
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/Transport$DftNotepad;->this$0:Lcom/alipay/mobile/common/transportext/Transport;

    invoke-static {v1, v0, p2, p3}, Lcom/alipay/mobile/common/transportext/Transport;->access$100(Lcom/alipay/mobile/common/transportext/Transport;ILjava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void

    .line 212
    :cond_1
    const-string/jumbo v1, "INFO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 213
    const/4 v0, 0x4

    goto :goto_0

    .line 214
    :cond_2
    const-string/jumbo v1, "WARN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 215
    const/4 v0, 0x5

    goto :goto_0

    .line 216
    :cond_3
    const-string/jumbo v1, "ERROR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 217
    const/4 v0, 0x6

    goto :goto_0

    .line 218
    :cond_4
    const-string/jumbo v1, "FATAL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 219
    const/4 v0, 0x7

    goto :goto_0
.end method
