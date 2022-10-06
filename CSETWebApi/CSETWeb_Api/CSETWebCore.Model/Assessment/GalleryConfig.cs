using System.Collections.Generic;

namespace CSETWebCore.Model.Assessment
{

    public class GalleryConfig
    {
        /// <summary>
        /// Multiple sets can be specified
        /// </summary>
        public List<string> Sets { get; set; }


        /// <summary>
        /// A single model can be specified 
        /// </summary>
        public GalleryModel Model { get; set; }

        public string SALLevel { get; set; }

        /// <summary>
        /// Indicates the starting application mode, 
        /// e.g., Requirements or Questions.  
        /// 
        /// Including "only" will hide the other mode.  In 
        /// other words, "Requirements only" will not display
        /// the button to toggle to Questions mode.
        /// </summary>
        public string QuestionMode { get; set; }

        public bool Diagram { get; set; } = false;
    }


    public class GalleryModel
    {
        public string ModelName { get; set; }

        public int Level { get; set; }
    }
}