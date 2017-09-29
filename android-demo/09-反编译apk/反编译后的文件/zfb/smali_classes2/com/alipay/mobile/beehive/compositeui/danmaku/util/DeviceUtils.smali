.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# static fields
.field public static final ABI_MIPS:Ljava/lang/String; = "mips"

.field public static final ABI_X86:Ljava/lang/String; = "x86"

.field private static final EM_386:I = 0x3

.field private static final EM_AARCH64:I = 0xb7

.field private static final EM_ARM:I = 0x28

.field private static final EM_MIPS:I = 0x8

.field private static final TAG:Ljava/lang/String;

.field private static sArch:Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Danmaku_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils;->TAG:Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;->Unknown:Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils;->sArch:Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getMyCpuArch()Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;
    .locals 7

    .prologue
    .line 38
    const-class v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils;

    monitor-enter v3

    const/16 v0, 0x14

    :try_start_0
    new-array v0, v0, [B

    .line 39
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "lib/libc.so"

    invoke-direct {v4, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    const/4 v2, 0x0

    .line 43
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    invoke-direct {v1, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 44
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 45
    const/16 v2, 0x13

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    const/16 v4, 0x12

    aget-byte v0, v0, v4

    or-int/2addr v0, v2

    .line 46
    sparse-switch v0, :sswitch_data_0

    .line 60
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils;->TAG:Ljava/lang/String;

    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "NativeBitmapFactory: libc.so is unknown arch: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-interface {v2, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 69
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    :cond_0
    :goto_1
    :try_start_4
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils;->sArch:Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v3

    return-object v0

    .line 48
    :sswitch_0
    :try_start_5
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;->ARM:Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils;->sArch:Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    :goto_2
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils;->TAG:Ljava/lang/String;

    invoke-interface {v2, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 69
    if-eqz v1, :cond_0

    .line 71
    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 72
    :catch_1
    move-exception v0

    .line 73
    :try_start_8
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 51
    :sswitch_1
    :try_start_9
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;->X86:Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils;->sArch:Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0

    .line 66
    :catch_2
    move-exception v0

    .line 67
    :goto_3
    :try_start_a
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils;->TAG:Ljava/lang/String;

    invoke-interface {v2, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 69
    if-eqz v1, :cond_0

    .line 71
    :try_start_b
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_1

    .line 72
    :catch_3
    move-exception v0

    .line 73
    :try_start_c
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_1

    .line 54
    :sswitch_2
    :try_start_d
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;->MIPS:Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils;->sArch:Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_0

    .line 68
    :catchall_1
    move-exception v0

    .line 69
    :goto_4
    if-eqz v1, :cond_1

    .line 71
    :try_start_e
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 76
    :cond_1
    :goto_5
    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 57
    :sswitch_3
    :try_start_10
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;->ARM64:Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils;->sArch:Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_0

    .line 72
    :catch_4
    move-exception v1

    .line 73
    :try_start_11
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils;->TAG:Ljava/lang/String;

    invoke-interface {v2, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 72
    :catch_5
    move-exception v0

    .line 73
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_1

    .line 68
    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 66
    :catch_6
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 64
    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 46
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
    .line 82
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    return-object v0
.end method

.method public static get_CPU_ABI2()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 87
    :try_start_0
    const-class v0, Landroid/os/Build;

    const-string/jumbo v2, "CPU_ABI2"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 88
    if-nez v0, :cond_0

    move-object v0, v1

    .line 101
    :goto_0
    return-object v0

    .line 91
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 93
    goto :goto_0

    .line 96
    :cond_1
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static isARMSimulatedByX86()Z
    .locals 2

    .prologue
    .line 123
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils;->getMyCpuArch()Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    move-result-object v0

    .line 124
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils;->supportX86()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;->X86:Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;->equals(Ljava/lang/Object;)Z

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
    .line 135
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 136
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 137
    const-string/jumbo v2, "MagicBox"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string/jumbo v0, "MagicBox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 137
    goto :goto_0
.end method

.method public static isMiBox2Device()Z
    .locals 3

    .prologue
    .line 128
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 129
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 130
    const-string/jumbo v2, "Xiaomi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const-string/jumbo v0, "dredd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 130
    goto :goto_0
.end method

.method public static isProblemBoxDevice()Z
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils;->isMiBox2Device()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils;->isMagicBoxDevice()Z

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
    .line 146
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils;->getMyCpuArch()Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    move-result-object v0

    .line 147
    const-string/jumbo v1, "armeabi-v7a"

    invoke-static {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils;->supportABI(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "armeabi"

    invoke-static {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils;->supportABI(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;->ARM:Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;->equals(Ljava/lang/Object;)Z

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
    .line 151
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils;->getMyCpuArch()Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    move-result-object v0

    .line 152
    const-string/jumbo v1, "x86"

    invoke-static {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils;->supportABI(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;->X86:Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;->equals(Ljava/lang/Object;)Z

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

    .line 105
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils;->get_CPU_ABI()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils;->get_CPU_ABI2()Ljava/lang/String;

    move-result-object v2

    .line 110
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
    .line 119
    const-string/jumbo v0, "mips"

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils;->supportABI(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static supportX86()Z
    .locals 1

    .prologue
    .line 115
    const-string/jumbo v0, "x86"

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils;->supportABI(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
