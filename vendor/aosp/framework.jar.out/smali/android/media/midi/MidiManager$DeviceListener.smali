.class Landroid/media/midi/MidiManager$DeviceListener;
.super Landroid/media/midi/IMidiDeviceListener$Stub;
.source "MidiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceListener"
.end annotation


# instance fields
.field private final mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/media/midi/MidiManager;


# direct methods
.method public constructor <init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiManager$DeviceCallback;Landroid/os/Handler;)V
    .locals 0
    .param p2, "callback"    # Landroid/media/midi/MidiManager$DeviceCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 72
    iput-object p1, p0, Landroid/media/midi/MidiManager$DeviceListener;->this$0:Landroid/media/midi/MidiManager;

    invoke-direct {p0}, Landroid/media/midi/IMidiDeviceListener$Stub;-><init>()V

    .line 73
    iput-object p2, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    .line 74
    iput-object p3, p0, Landroid/media/midi/MidiManager$DeviceListener;->mHandler:Landroid/os/Handler;

    .line 75
    return-void
.end method

.method static synthetic access$000(Landroid/media/midi/MidiManager$DeviceListener;)Landroid/media/midi/MidiManager$DeviceCallback;
    .locals 1
    .param p0, "x0"    # Landroid/media/midi/MidiManager$DeviceListener;

    .line 68
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    return-object v0
.end method


# virtual methods
.method public onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 3
    .param p1, "device"    # Landroid/media/midi/MidiDeviceInfo;

    .line 79
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 80
    move-object v0, p1

    .line 81
    .local v0, "deviceF":Landroid/media/midi/MidiDeviceInfo;
    iget-object v1, p0, Landroid/media/midi/MidiManager$DeviceListener;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/media/midi/MidiManager$DeviceListener$1;

    invoke-direct {v2, p0, v0}, Landroid/media/midi/MidiManager$DeviceListener$1;-><init>(Landroid/media/midi/MidiManager$DeviceListener;Landroid/media/midi/MidiDeviceInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    .end local v0    # "deviceF":Landroid/media/midi/MidiDeviceInfo;
    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    invoke-virtual {v0, p1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V

    .line 89
    :goto_0
    return-void
.end method

.method public onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 3
    .param p1, "device"    # Landroid/media/midi/MidiDeviceInfo;

    .line 93
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 94
    move-object v0, p1

    .line 95
    .local v0, "deviceF":Landroid/media/midi/MidiDeviceInfo;
    iget-object v1, p0, Landroid/media/midi/MidiManager$DeviceListener;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/media/midi/MidiManager$DeviceListener$2;

    invoke-direct {v2, p0, v0}, Landroid/media/midi/MidiManager$DeviceListener$2;-><init>(Landroid/media/midi/MidiManager$DeviceListener;Landroid/media/midi/MidiDeviceInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    .end local v0    # "deviceF":Landroid/media/midi/MidiDeviceInfo;
    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    invoke-virtual {v0, p1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V

    .line 103
    :goto_0
    return-void
.end method

.method public onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V
    .locals 3
    .param p1, "status"    # Landroid/media/midi/MidiDeviceStatus;

    .line 107
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 108
    move-object v0, p1

    .line 109
    .local v0, "statusF":Landroid/media/midi/MidiDeviceStatus;
    iget-object v1, p0, Landroid/media/midi/MidiManager$DeviceListener;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/media/midi/MidiManager$DeviceListener$3;

    invoke-direct {v2, p0, v0}, Landroid/media/midi/MidiManager$DeviceListener$3;-><init>(Landroid/media/midi/MidiManager$DeviceListener;Landroid/media/midi/MidiDeviceStatus;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    .end local v0    # "statusF":Landroid/media/midi/MidiDeviceStatus;
    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    invoke-virtual {v0, p1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V

    .line 117
    :goto_0
    return-void
.end method
