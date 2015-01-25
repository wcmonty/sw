using System;
using Gtk;
using System.Net;
using System.IO;
using System.Threading;
using System.Threading.Tasks;

public partial class MainWindow: Gtk.Window
{	
	public MainWindow (): base (Gtk.WindowType.Toplevel)
	{
		Build ();
	}
	
	protected void OnDeleteEvent (object sender, DeleteEventArgs a)
	{
		Application.Quit ();
		a.RetVal = true;
	}

	protected void OnButton2Clicked (object sender, EventArgs e)
	{
//		throw new System.NotImplementedException ();
		string url, contents;
		GdkWindow.Cursor = new Gdk.Cursor (Gdk.CursorType.Watch);
		url = this.textview2.Buffer.Text;

		Task<string> t = new Task<string> (() => 
		{
			try {
				contents = DownloadSite (url);
			} catch (Exception ex) {
				contents = "**Error: " + ex.Message;
			}
			return contents;

		}
		);

		var uictx = TaskScheduler.FromCurrentSynchronizationContext();

		Task t2 = t.ContinueWith((prevtask) =>
	    {
			this.textview3.Buffer.Text = prevtask.Result;
		},
		uictx
		);

		t.Start ();


		GdkWindow.Cursor = new Gdk.Cursor (Gdk.CursorType.Arrow);
	}

	static byte[] GetURLContents (string url)
	{
		var content = new MemoryStream ();
		var webReq = (HttpWebRequest)WebRequest.Create (url);

		using (WebResponse response = webReq.GetResponse()) {
			using (Stream responseStream = response.GetResponseStream()) {
				responseStream.CopyTo (content);
			}
		}
		Thread.Sleep (5000);

		return content.ToArray ();
	}

	static string DownloadSite (string url)
	{
		byte[] data;
		data = GetURLContents (url);
		string s = System.Text.Encoding.UTF8.GetString (data);

//		s = (s.Substring (0, 90)) + Environment.NewLine +
//			" ." + Environment.NewLine + 
//			" ." + Environment.NewLine + 
//			" ." + Environment.NewLine + 
//				s.Substring (s.Length - 90, 90) + Environment.NewLine;

		return s;
	}

	protected void onDeleteEvent (object sender, DeleteEventArgs a)
	{
		Application.Quit ();
		a.RetVal = true;
	}

}
