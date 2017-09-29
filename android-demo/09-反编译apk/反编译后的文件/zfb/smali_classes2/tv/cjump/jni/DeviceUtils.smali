.class public Ltv/cjump/jni/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# static fields
.field public static final ABI_MIPS:Ljava/lang/String; = "mips"

.field public static final ABI_X86:Ljava/lang/String; = "x86"

.field private static final EM_386:I = 0x3

.field private static final EM_AARCH64:I = 0xb7

.field private static final EM_ARM:I = 0x28

.field private static final EM_MIPS:I = 0x8

.field private static sArch:Ltv/cjump/jni/DeviceUtils$ARCH;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Ltv/cjump/jni/DeviceUtils$ARCH;->Unknown:Ltv/cjump/jni/DeviceUtils$ARCH;

    sput-object v0, Ltv/cjump/jni/DeviceUtils;->sArch:Ltv/cjump/jni/DeviceUtils$ARCH;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getMyCpuArch()Ltv/cjump/jni/DeviceUtils$ARCH;
    .locals 7

    .prologue
    .line 36
    const-class v3, Ltv/cjump/jni/DeviceUtils;

    monitor-enter v3

    const/16 v0, 0x14

    :try_start_0
    new-array v0, v0, [B

    .line 37
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "lib/libc.so"

    invoke-direct {v4, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    const/4 v2, 0x0

    .line 41
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    invoke-direct {v1, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 42
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 43
    const/16 v2, 0x13

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    const/16 v4, 0x12

    aget-byte v0, v0, v4

    or-int/2addr v0, v2

    .line 44
    sparse-switch v0, :sswitch_data_0

    .line 58
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v4, Ltv/cjump/jni/NativeBitmapFactory;->TAG:Ljava/lang/String;

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "libc.so is unknown arch: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-interface {v2, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 67
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    :cond_0
    :goto_1
    :try_start_4
    sget-object v0, Ltv/cjump/jni/DeviceUtils;->sArch:Ltv/cjump/jni/DeviceUtils$ARCH;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v3

    return-object v0

    .line 46
    :sswitch_0
    :try_start_5
    sget-object v0, Ltv/cjump/jni/DeviceUtils$ARCH;->ARM:Ltv/cjump/jni/DeviceUtils$ARCH;

    sput-object v0, Ltv/cjump/jni/DeviceUtils;->sArch:Ltv/cjump/jni/DeviceUtils$ARCH;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    :goto_2
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v4, "Danmaku_"

    invoke-interface {v2, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 67
    if-eqz v1, :cond_0

    .line 69
    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 70
    :catch_1
    move-exception v0

    .line 71
    :try_start_8
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "Danmaku_"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 49
    :sswitch_1
    :try_start_9
    sget-object v0, Ltv/cjump/jni/DeviceUtils$ARCH;->X86:Ltv/cjump/jni/DeviceUtils$ARCH;

    sput-object v0, Ltv/cjump/jni/DeviceUtils;->sArch:Ltv/cjump/jni/DeviceUtils$ARCH;
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0

    .line 64
    :catch_2
    move-exception v0

    .line 65
    :goto_3
    :try_start_a
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v4, "Danmaku_"

    invoke-interface {v2, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 67
    if-eqz v1, :cond_0

    .line 69
    :try_start_b
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_1

    .line 70
    :catch_3
    move-exception v0

    .line 71
    :try_start_c
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "Danmaku_"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_1

    .line 52
    :sswitch_2
    :try_start_d
    sget-object v0, Ltv/cjump/jni/DeviceUtils$ARCH;->MIPS:Ltv/cjump/jni/DeviceUtils$ARCH;

    sput-object v0, Ltv/cjump/jni/DeviceUtils;->sArch:Ltv/cjump/jni/DeviceUtils$ARCH;
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_0

    .line 66
    :catchall_1
    move-exception v0

    .line 67
    :goto_4
    if-eqz v1, :cond_1

    .line 69
    :try_start_e
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 74
    :cond_1
    :goto_5
    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 55
    :sswitch_3
    :try_start_10
    sget-object v0, Ltv/cjump/jni/DeviceUtils$ARCH;->ARM64:Ltv/cjump/jni/DeviceUtils$ARCH;

    sput-object v0, Ltv/cjump/jni/DeviceUtils;->sArch:Ltv/cjump/jni/DeviceUtils$ARCH;
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_0

    .line 70
    :catch_4
    move-exception v1

    .line 71
    :try_start_11
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v4, "Danmaku_"

    invoke-interface {v2, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 70
    :catch_5
    move-exception v0

    .line 71
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "Danmaku_"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_1

    .line 66
    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 64
    :catch_6
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 62
    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 44
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x8 -> :sswitch_2
        0x28 -> :sswitch_0
        0xb7 -> :sswitch_3
    .end sparse-switch
.end method

.method public static get_CPU_ABI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    return-object v0
.end method

.method public static get_CPU_ABI2()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 85
    :try_start_0
    const-class v0, Landroid/os/Build;

    const-string/jumbo v2, "CPU_ABI2"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 86
    if-nez v0, :cond_0

    move-object v0, v1

    .line 99
    :goto_0
    return-object v0

    .line 89
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 91
    goto :goto_0

    .line 94
    :cond_1
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static isARMSimulatedByX86()Z
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->getMyCpuArch()Ltv/cjump/jni/DeviceUtils$ARCH;

    move-result-object v0

    .line 122
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->supportX86()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ltv/cjump/jni/DeviceUtils$ARCH;->X86:Ltv/cjump/jni/DeviceUtils$ARCH;

    invoke-virtual {v1, v0}, Ltv/cjump/jni/DeviceUtils$ARCH;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMagicBoxDevice()Z
    .locals 3

    .prologue
    .line 133
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 134
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 135
    const-string/jumbo v2, "MagicBox"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const-string/jumbo v0, "MagicBox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 135
    goto :goto_0
.end method

.method public static isMiBox2Device()Z
    .locals 3

    .prologue
    .line 126
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 127
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 128
    const-string/jumbo v2, "Xiaomi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const-string/jumbo v0, "dredd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 128
    goto :goto_0
.end method

.method public static isProblemBoxDevice()Z
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->isMiBox2Device()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->isMagicBoxDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isRealARMArch()Z
    .locals 2

    .prologue
    .line 144
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->getMyCpuArch()Ltv/cjump/jni/DeviceUtils$ARCH;

    move-result-object v0

    .line 145
    const-string/jumbo v1, "armeabi-v7a"

    invoke-static {v1}, Ltv/cjump/jni/DeviceUtils;->supportABI(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "armeabi"

    invoke-static {v1}, Ltv/cjump/jni/DeviceUtils;->supportABI(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Ltv/cjump/jni/DeviceUtils$ARCH;->ARM:Ltv/cjump/jni/DeviceUtils$ARCH;

    invoke-virtual {v1, v0}, Ltv/cjump/jni/DeviceUtils$ARCH;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRealX86Arch()Z
    .locals 2

    .prologue
    .line 149
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->getMyCpuArch()Ltv/cjump/jni/DeviceUtils$ARCH;

    move-result-object v0

    .line 150
    const-string/jumbo v1, "x86"

    invoke-static {v1}, Ltv/cjump/jni/DeviceUtils;->supportABI(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ltv/cjump/jni/DeviceUtils$ARCH;->X86:Ltv/cjump/jni/DeviceUtils$ARCH;

    invoke-virtual {v1, v0}, Ltv/cjump/jni/DeviceUtils$ARCH;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportABI(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 103
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->get_CPU_ABI()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->get_CPU_ABI2()Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportMips()Z
    .locals 1

    .prologue
    .line 117
    const-string/jumbo v0, "mips"

    invoke-static {v0}, Ltv/cjump/jni/DeviceUtils;->supportABI(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static supportX86()Z
    .locals 1

    .prologue
    .line 113
    const-string/jumbo v0, "x86"

    invoke-static {v0}, Ltv/cjump/jni/DeviceUtils;->supportABI(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
